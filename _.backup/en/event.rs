#[must_use]
pub fn new<T1: EventType, T2: EventData>() -> Emitter<T1, T2> {
  Emitter {
    listeners: HashMap::new(),
  }
}

pub struct Emitter<T1: EventType, T2: EventData> {
  listeners: HashMap<T1, Vec<Callback<T2>>>,
}

impl<T1: EventType, T2: EventData> Emitter<T1, T2> {
  pub fn on<F>(&mut self, event: T1, callback: F)
  where F: Fn(T2) + 'static {
    self.listeners.entry(event).or_default().push(Box::new(callback));
  }

  pub fn emit(&self, event: &T1, data: T2) {
    if let Some(callbacks) = self.listeners.get(event) {
      for callback in callbacks {
        callback(data.clone());
      }
    }
  }
}

pub trait EventType: Clone + Eq + Hash + 'static {}

impl<T: Clone + Eq + Hash + 'static> EventType for T {
}

pub trait EventData: Clone + 'static {}

impl<T: Clone + 'static> EventData for T {
}

type Callback<T> = Box<dyn Fn(T)>;

use std::{
  collections::HashMap,
  hash::Hash,
};

pub mod cross;

#[cfg(test)]
mod tests {
  #[test]
  pub fn test() {
    let mut emitter = new::<Enum, String>();

    emitter.on(Enum::A {}, |_x| {
      // thread::spawn(move || {
      //   println!("Received A message at: {:?}", x.elapsed());
      //   thread::sleep(Duration::from_millis(500));
      // });
    });

    let now = std::time::Instant::now();

    for _ in 1..1000 {
      emitter.emit(&Enum::A {}, String::new());
    }

    println!("Total time: {:?}", now.elapsed());
  }

  #[derive(Clone, Hash, PartialEq, Eq)]
  pub enum Enum {
    A {},
  }

  use super::*;
}
