// Operators

/*
1. Arithmetic operator  -> {+, -, *, /, %, ~/, ++, --}
2. Assignment operator  -> {=}
3. Relational operator  -> {<, >, <=, >=, ==}
4. Logical operator     -> {&&, ||, !}
5. Conditional operator -> {ternary operator( x < y ? x : y )}
 */


void main()
{
  var v1 = 10;
  var v2 = 15;
  // Arithmetic operators
  // Binary operators ---------------------------------------------------------
  print("$v1 + $v2 = ${v1+v2}");
  print("$v1 - $v2 = ${v1-v2}");
  print("$v1 * $v2 = ${v1*v2}");
  print("$v1 / $v2 = ${v1/v2}");
  print("$v1 % $v2 = ${v1%v2}");
  print("$v1 ~/ $v2 = ${v1~/v2}");    //Integer division

  // Unary operators-----------------------------------------------------------
  print(v1++);
  print(++v1);
  print(v1--);
  print(--v1);
  print(-v1); //unary (-) minus operator

  //Assignment operator--------------------------------------------------------
  v1 = v2;
  print(v1);

  // Relational operator-------------------------------------------------------
  var res = v1 < v2;
  print(res);

  // Logical operator----------------------------------------------------------
  bool x = true;
  bool y = false;
  print(x && y);
  print(x || y);
  print(!x);

  int num = 10;
  String name = "abc";
  bool a = true;
  print(num is int);      // true
  print(name is double);  // false
  print(a is! bool);      // false
}