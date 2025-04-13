#[inline]
pub fn does<F: FnOnce() -> T, T>(f: F, s: &str) -> T {
  let now = time::Instant::now();
  let back = f();
  let duration = now.elapsed();
  println!("{s}: {duration:?}");
  back
}

#[inline]
pub fn rest(n: u64) {
  std::thread::sleep(time::Duration::from_millis(n));
}

#[must_use]
#[inline]
pub fn since(start: time::Instant) -> time::Duration {
  start.elapsed()
}

#[must_use]
#[inline]
pub fn now() -> time::Instant {
  time::Instant::now()
}

use ::std::time;
