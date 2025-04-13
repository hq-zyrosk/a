pub fn worker(job_queue: Arc<crossbeam_queue::SegQueue<Job>>) -> Worker {
  let running = Arc::new(std::sync::atomic::AtomicBool::new(true));
  let running_clone = Arc::clone(&running);

  let a_spawn = thread::spawn(move || {
    while running_clone.load(std::sync::atomic::Ordering::Relaxed) {
      match job_queue.pop() {
        Some(job) => {
          job();
        },
        None => {
          // Queue is empty, yield to other threads
          thread::yield_now();
        },
      }
    }
  });

  Worker {
    thread: Some(a_spawn),
    running,
  }
}

pub struct Worker {
  thread: Option<thread::JoinHandle<()>>,
  running: Arc<std::sync::atomic::AtomicBool>,
}

type Job = Box<dyn FnOnce() + Send + 'static>;
pub trait ThreadTask = FnOnce() + Send + 'static;

use std::{
  sync::Arc,
  thread,
};

pub mod worker;
