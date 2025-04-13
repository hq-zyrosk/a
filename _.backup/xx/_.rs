use std::{
  io,
  thread,
  time::Duration,
};

fn main() {
  // Initialize a standard deck of 52 cards
  let cards = [
    "AC",
    "2C",
    "3C",
    "4C",
    "5C",
    "6C",
    "7C",
    "8C",
    "9C",
    "TC",
    "JC",
    "QC",
    "KC",
    "AD",
    "2D",
    "3D",
    "4D",
    "5D",
    "6D",
    "7D",
    "8D",
    "9D",
    "TD",
    "JD",
    "QD",
    "KD",
    "AH",
    "2H",
    "3H",
    "4H",
    "5H",
    "6H",
    "7H",
    "8H",
    "9H",
    "TH",
    "JH",
    "QH",
    "KH",
    "AS",
    "2S",
    "3S",
    "4S",
    "5S",
    "6S",
    "7S",
    "8S",
    "9S",
    "TS",
    "JS",
    "QS",
    "KS",
  ];

  loop {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let cards_input = input.trim();

    if cards_input.len() != 4 {
      println!("Invalid input. Please enter exactly two cards (e.g., ACJH, 2C3D).");
      continue;
    }

    let card1 = &cards_input[0..2];
    let card2 = &cards_input[2..4];

    // Find the indices of the cards
    let index1 = match cards.iter().position(|&card| card == card1) {
      Some(idx) => idx,
      None => {
        println!("Invalid card name: {card1}. Please enter valid cards (e.g., ACJH, 2C3D).");
        continue;
      },
    };

    let index2 = match cards.iter().position(|&card| card == card2) {
      Some(idx) => idx,
      None => {
        println!("Invalid card name: {card2}. Please enter valid cards (e.g., ACJH, 2C3D).");
        continue;
      },
    };

    // Determine if the indices are odd or even
    let parity1 = if index1 % 2 == 0 {
      2
    }
    else {
      1
    };
    let parity2 = if index2 % 2 == 0 {
      2
    }
    else {
      1
    };

    // Compare the parities and print the result
    if parity1 != parity2 {
      println!("Y, {card1} {parity1}, {card2} {parity2}");
    }
    else {
      println!("N, {card1} {parity1}, {card2} {parity2}");
    }

    thread::sleep(Duration::from_millis(1000));
  }
}
