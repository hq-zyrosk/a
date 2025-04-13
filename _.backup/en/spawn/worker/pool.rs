pub fn execute<F: Abc>(pool: &Pool, f: F) {
  // Push directly to the lock-free queue instead of using a sender
  pool.job_queue.push(Box::new(f));
}

pub fn exit(pool: &mut Pool) {
  // Need to add a termination signal mechanism
  // For each worker, push a termination job
  for _ in 0..pool.workers.len() {
    pool.job_queue.push(Box::new(|| {
      // This will signal the worker to exit
      std::thread::sleep(std::time::Duration::from_nanos(1)); // No-op job
    }));
  }

  // Join all worker threads
  for worker in &mut pool.workers {
    if let Some(thread) = worker.thread.take() {
      thread.join().unwrap();
    }
  }
}

pub trait Abc = FnOnce() + Send + 'static;

use crate::spawn::worker::Pool;
