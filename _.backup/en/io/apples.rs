pub fn push(message: &[u8], file: &mut std::fs::File) -> io::Result<()> {
  file.write_all(message)?;
  file.flush()?;
  Ok(())
}

pub fn read(file: &mut File) -> io::Result<()> {
  let mut buffer = Vec::new();
  let mut byte = [0u8];

  loop {
    file.read_exact(&mut byte)?;

    match byte[0] {
      0 => {
        println!("Message: {}", String::from_utf8_lossy(&buffer));
        buffer.clear();
      },
      b => buffer.push(b),
    }
  }
}

use std::{
  fs::File,
  io::{
    self,
    Read,
    Write,
  },
};

pub mod efg;
