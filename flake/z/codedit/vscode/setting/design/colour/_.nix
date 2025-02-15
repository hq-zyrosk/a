let
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

  toHex =
    n:
    let
      hex = decToHex n;
    in
    if (builtins.stringLength hex) == 1 then "0${hex}" else hex;
in
{
  rgba =
    r: g: b: a:
    "#" + (toHex r) + (toHex g) + (toHex b) + (toHex a);
}
