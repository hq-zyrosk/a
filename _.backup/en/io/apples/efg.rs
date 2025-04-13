pub fn duplicate(old_fd: i32, new_fd: i32) -> io::Result<()> {
  if old_fd != new_fd {
    if unsafe { libc::dup2(old_fd, new_fd) } == -1 {
      return Err(io::Error::other(format!("dup2 failed for fd {new_fd}")));
    }
    unsafe { libc::close(old_fd) };
  }
  Ok(())
}

use std::io::{
  self,
};
