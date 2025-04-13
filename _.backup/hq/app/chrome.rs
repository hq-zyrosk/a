/// Launches a Chrome instance with the specified user profile.
///
/// # Errors
///
/// Returns an error if:
/// - Creating pipes fails
/// - Forking the process fails
/// - Executing Chrome fails
pub fn chrome(num: i32) -> io::Result<Chrome> {
  let mut pipe_write = [-1; 2];
  let mut pipe_read = [-1; 2];

  if unsafe { libc::pipe(pipe_write.as_mut_ptr()) } == -1 {
    return Err(Error::last_os_error());
  }

  if unsafe { libc::pipe(pipe_read.as_mut_ptr()) } == -1 {
    return Err(Error::last_os_error());
  }

  match unsafe { libc::fork() } {
    -1 => Err(Error::last_os_error()),
    0 => {
      unsafe { libc::close(pipe_write[1]) };
      unsafe { libc::close(pipe_read[0]) };

      efg::duplicate(pipe_write[0], 3)?;
      efg::duplicate(pipe_read[1], 4)?;

      let program = CString::new("google-chrome-stable").map_err(|e| {
        Error::new(io::ErrorKind::InvalidInput, format!("Invalid program name: {e}"))
      })?;

      let args = [
        CString::new("google-chrome-stable")?,
        CString::new(format!("--user-data-dir=.ignore/{num}"))?,
        CString::new("--remote-debugging-pipe=JSON")?,
        CString::new("--no-first-run")?,
        // CString::new("--headless=new")?,
      ];

      let arg_ptrs: Vec<*const libc::c_char> =
        args.iter().map(|arg| arg.as_ptr()).chain(std::iter::once(std::ptr::null())).collect();

      let _exec_result = unsafe { libc::execvp(program.as_ptr(), arg_ptrs.as_ptr()) };
      let _exec_errno = unsafe { *libc::__errno_location() };

      // If we get here, execvp failed
      eprintln!("Failed to execute chrome: {}", Error::last_os_error());
      exit(1);
    },
    _ => {
      unsafe { libc::close(pipe_write[0]) };
      unsafe { libc::close(pipe_read[1]) };

      Ok(Chrome {
        i: unsafe { std::fs::File::from_raw_fd(pipe_write[1]) },
        o: unsafe { std::fs::File::from_raw_fd(pipe_read[0]) },
      })
    },
  }
}

/// Sends a message to Chrome through the pipe.
///
/// # Errors
///
/// Returns an error if writing to the Chrome process fails.
pub fn send(message: &[u8], chrome: &mut Chrome) -> io::Result<()> {
  apples::push(message, &mut chrome.i)
}

/// Reads messages from Chrome through the pipe.
///
/// # Errors
///
/// Returns an error if cloning the Chrome output file descriptor fails.
pub fn read(chrome: &mut Chrome) -> io::Result<()> {
  let mut chrome_o = chrome.o.try_clone()?;
  thread::spawn(move || apples::read(&mut chrome_o));
  Ok(())
}

#[derive(Debug)]
pub struct Chrome {
  pub i: File,
  pub o: File,
}

impl Clone for Chrome {
  fn clone(&self) -> Self {
    Self {
      i: self.i.try_clone().unwrap(),
      o: self.o.try_clone().unwrap(),
    }
  }
}

use {
  en::io::{
    apples,
    apples::efg,
  },
  std::{
    ffi::CString,
    fs::File,
    io::{
      self,
      Error,
    },
    os::unix::io::FromRawFd,
    process::exit,
    thread,
  },
};

pub mod cdp;
