#[must_use]
pub fn pool(size: usize) -> Pool {
  let job_queue = Arc::new(crossbeam_queue::SegQueue::new());

  let mut workers = Vec::with_capacity(size);
  for _ in 0..size {
    workers.push(spawn::worker(Arc::clone(&job_queue)));
  }

  Pool {
    workers,
    job_queue,
  }
}

pub struct Pool {
  workers: Vec<spawn::Worker>,
  job_queue: Arc<crossbeam_queue::SegQueue<Box<dyn FnOnce() + Send + 'static>>>,
}

pub trait Abc = FnOnce() + Send + 'static;

use {
  crate::spawn,
  std::sync::Arc,
};

pub mod pool;
