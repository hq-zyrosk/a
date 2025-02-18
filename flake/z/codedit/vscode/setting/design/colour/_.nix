let
  convert = n: builtins.ceil (255 * n);
  does = hex: if (builtins.stringLength hex) == 1 then "0${hex}" else hex;
  decToHex =
    decimal:
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

      convertToHex =
        n:
        if n < 16 then
          builtins.elemAt hexChars n
        else
          (convertToHex (n / 16)) + (builtins.elemAt hexChars (n - ((n / 16) * 16)));
    in
    if decimal == 0 then "0" else convertToHex decimal;

  toHex = n: does (decToHex n);
in
rec {
  rgba =
    r: g: b: a:
    "#" + (toHex (convert r)) + (toHex (convert g)) + (toHex (convert b)) + (toHex (convert a));
  c2 = convert 0.9;
  c1 = rgba 0.9058 0.81 0.81 1;
}
