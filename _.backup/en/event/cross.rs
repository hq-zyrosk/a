#[derive(Clone)]
pub struct Emitter<T1: EventType, T2: EventData> {
  listeners: Arc<Mutex<HashMap<T1, Vec<Callback<T2>>>>>,
}

impl<T1: EventType, T2: EventData> Emitter<T1, T2> {
  #[must_use]
  pub fn new() -> Self {
    Self {
      listeners: Arc::new(Mutex::new(HashMap::new())),
    }
  }

  /// Registers a callback function that will be called when the specified event is emitted.
  ///
  /// # Panics
  ///
  /// This function will panic if the internal mutex is poisoned.
  pub fn on<F>(&self, event: T1, callback: F)
  where F: Fn(T2) + Send + Sync + 'static {
    let mut listeners = self.listeners.lock().unwrap();
    listeners.entry(event).or_default().push(Box::new(callback));
  }

  /// Emits an event with the associated data to all registered listeners.
  ///
  /// # Panics
  ///
  /// This function will panic if the internal mutex is poisoned.
  pub fn emit(&self, event: &T1, data: T2) {
    if let Some(callbacks) = self.listeners.lock().unwrap().get(event) {
      for callback in callbacks {
        callback(data.clone());
      }
    }
  }
}

pub trait EventType: Clone + Eq + Hash + Send + Sync + 'static {}

impl<T: Clone + Eq + Hash + Send + Sync + 'static> EventType for T {
}

pub trait EventData: Send + Sync + Clone + 'static {}

impl<T: Send + Sync + Clone + 'static> EventData for T {
}

type Callback<T> = Box<dyn Fn(T) + Send + Sync>;

use std::{
  collections::HashMap,
  hash::Hash,
  sync::{
    Arc,
    Mutex,
  },
};
