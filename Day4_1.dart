// type conversion

void main()
{
  // int    -> String : value.toString()
  // int    -> double : value.toDouble()
  // double -> String : value.toString()
  // double -> int    : value.toInt()
  // String -> int    : int.parse(value)
  // String -> double : double.parse(value)
  // bool   -> String : value.toString()

  int value = 10;
  print(value.runtimeType);
  var converted = value.toString();
  print(converted.runtimeType);
}