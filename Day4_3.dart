// Taking input in Dart programming language
import "dart:io";

void main()
{
  stdout.write("Enter your name : ");   // similar to print function
  String? name = stdin.readLineSync();  // or String name = stdin.readLineSync()!;

  // Null safety operator(?) : user may enter null value
  // Null safety operator(!) : user will not enter null value

  print("Hello, ${name}");
}