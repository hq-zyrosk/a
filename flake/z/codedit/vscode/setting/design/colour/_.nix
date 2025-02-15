let
  toHex = n: builtins.printf "%02x" n;
in
{
  rgba =
    r: g: b: a:
    "#" + (toHex r) + (toHex g) + (toHex b) + (toHex a);
}
