pub fn mutable<T>(a: T) -> Mutable<T> {
  Arc::new(RwLock::new(a))
}

pub fn clone<T>(a: &Mutable<T>) -> Mutable<T> {
  Arc::clone(a)
}

type Mutable<T> = Arc<RwLock<T>>;

use std::sync::{
  Arc,
  RwLock,
};
