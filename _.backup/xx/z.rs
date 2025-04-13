#![feature(default_field_values)]
#![feature(min_specialization)]
#![feature(trait_alias)]
#![feature(auto_traits)]
#![feature(fmt_debug)]

#[inline]
const fn set(e: i32, x: Set<Data>) -> Set<Data> {
  x.n1 = x.n1 + e;
  x
}

#[inline]
const fn get(x: Get<Data>) -> Get<Data> {
  x
}

fn version_3(px: &worker::Pool) -> i32 {
  // println!("abc");
  // let data = &mutex::mutable(Data {
  //   n1 :1,
  // });
  // let data_clone = Arc::clone(data);
  let a_now = time::now();
  pool::execute(px, move || {
    println!("Version 3: {:#?}", time::since(a_now));
    // loop {
    //   {
    //     let writable = &mut data_clone.write().unwrap();

    //     for _i in 0..1_000_000_000 {
    //       set(1, writable);
    //       // get(readable).n1;
    //     }
    //   }

    //   let readable = &data_clone.read().unwrap();

    //   println!(
    //     "Version 3: {} : {:?}",
    //     readable.n1,
    //     version_3_time.elapsed()
    //   );
    //   time::rest(1_000);
    // }
  });
  1
}

fn version_2() -> i32 {
  let mut data = Data {
    n1: 1,
  };

  for _i in 0..1_000_000_000 {
    set(1, &mut data);
    get(&data);
  }

  data.n1
}

fn version_1() -> i32 {
  let data = &mut Data {
    n1: 1,
  };

  for _i in 0..1_000_000_000 {
    set(1, data);
    get(data);
  }

  data.n1
}

fn main() {
  // let px = &mut worker::pool(10);
  // version_3(px);

  let version_2_time = Instant::now();
  let data = version_2();
  println!("Version 2: {} : {:?}", data, version_2_time.elapsed());

  let version_1_time = Instant::now();
  let data = version_1();
  println!("Version 1: {} : {:?}", data, version_1_time.elapsed());

  loop {
    thread::yield_now();
    time::rest(1_000);
  }
}

#[derive(Debug)]
struct Data {
  n1: i32,
}

type Set<'a, T> = &'a mut T;

type Get<'a, T> = &'a T;

use {
  ::en::{
    spawn::{
      worker,
      worker::pool,
    },
    time,
  },
  std::{
    thread,
    time::Instant,
  },
};
