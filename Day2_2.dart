// Data types in Dart programming language
/*
1. String
2. int
3. double
4. num
5. List
6. Map
 */

void main()
{
  // String
  String name1 = "Flutter Course"; //Strictly typed variable
  // name1 = 10;          error
  String name2 = "Jovac";
  String institute = '''
  GLA University,
  Mathura,
  Utter Pradesh
  ''';     // """.............."""   uses for multi line string
  print("$name2 : $name1");
  print(name2+" : "+name1);
  print(institute);
//----------------------------------------------------------------------------
  //Integer
  int distance = 200;
  print("Distance : ${distance}Km");
//----------------------------------------------------------------------------
  //Double
  double fee = 1000.00;
  print("Course Fee : $fee");
//----------------------------------------------------------------------------
  // Number
  num price = 1000;
  print(price);
  price = 1000.50;
  print(price);
//----------------------------------------------------------------------------
  // List
  List list = [1,2,3,4,"hello",false];
  print(list);
  print(list[4]);
  print(list.length);
  list.add(7);
  print(list);
  list.insert(3, true);
  list.insertAll(4, ['a',9]);
  print(list);
  list.remove(7);
  print(list);
  list.forEach((element) {
    print(element);
  });
//----------------------------------------------------------------------------

  // Map
  Map data = {"name" : "Lokesh", "age" : 30, "phone no." : "+91XXXXXXXXXX"};
  print(data);
  print(data["name"]);
  data["email"] = "abc@gmail.com";
  print(data);

  Map course = new Map();
  course["name"] = "Flutter";
  course["Fee"] = "1000";
  print(course);
//----------------------------------------------------------------------------

  // Boolean
  bool test = 12>5;
  print(test);

  print(list.runtimeType);
}