void main() {
  var and = 42 & 27;
  print(42.toRadixString(2).padLeft(8, '0'));
  print(27.toRadixString(2).padRight(8, '0'));
  print(and);
  print(and.toRadixString(2).padLeft(8, '0'));
}
