let
  hexChars = [
    "0"
    "1"
    "2"
    "3"
    "4"
    "5"
    "6"
    "7"
    "8"
    "9"
    "A"
    "B"
    "C"
    "D"
    "E"
    "F"
  ];
  decToHex = n:
    if n < 16
    then builtins.elemAt hexChars n
    else (decToHex (n / 16)) + (builtins.elemAt hexChars (n - ((n / 16) * 16)));
  convert = n: builtins.ceil ((255 - 0.5) * n);
  does = hex:
    if (builtins.stringLength hex) == 1
    then "0${hex}"
    else hex;
  toHex = n: does (decToHex n);
in {
  rgba = r: g: b: a:
    "#" + (toHex (convert r)) + (toHex (convert g)) + (toHex (convert b)) + (toHex (convert a));
}
