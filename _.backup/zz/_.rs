#![feature(alloc_error_handler)]
#![no_implicit_prelude]
// #![no_std]

extern crate alloc;

fn main() -> io::Result<()> {
  let emitter = cross::Emitter::<&str, chrome::Chrome>::new();
  let mut cmd = chrome::chrome(88)?;
  let mut pro = ::alloc::vec::Vec::new();

  chrome::read(&mut cmd)?;

  let emitter_clone = emitter.clone();
  let handle = thread::spawn(move || -> io::Result<()> {
    emitter_clone.on("message", |x: chrome::Chrome| {
      println!("Received message: {x:?}");
      let mut cmd = x;
      chrome::send(b"{\"id\": 11, \"method\": \"Target.getTargets\"}\0", &mut cmd).unwrap();
    });

    loop {
      thread::yield_now();
    }
  });
  pro.push(handle);

  println!("Starts: {:?}", &mut cmd);

  thread::sleep(Duration::from_millis(1000));

  emitter.emit(&"message", cmd.clone());

  loop {
    thread::yield_now();
  }
}

use {
  ::core::clone::Clone,
  ::en::event::cross,
  ::hq::app::chrome,
  ::std::{
    io,
    println,
    thread,
    time::Duration,
  },
};
