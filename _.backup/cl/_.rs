#![no_implicit_prelude]
#![no_std]

#[must_use]
pub const fn test(a: H) -> H {
  a
}

pub type N<T> = Vec<T>;

pub type H<'a> = &'a str;

pub type E = primitive::i32;

pub enum A<T> {
  Can(T),
  Not,
}

pub mod a;

use {
  ::core::primitive,
  alloc::vec::Vec,
};

extern crate alloc;
