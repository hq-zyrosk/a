#![feature(default_field_values)]
#![feature(trait_alias)]
#![feature(auto_traits)]
// #![no_implicit_prelude]

// auto trait Valid {
//   fn valid(&self) -> bool;
// }

pub mod event;
pub mod io;
pub mod mutex;
pub mod spawn;
pub mod time;
