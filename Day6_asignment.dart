import "dart:io";
void main(){
  String choise = "y";
  double res = 0;
  while(true){
    if(choise == "n" || choise == "N"){
      break;
    }
    stdout.write("Enter operation +, -, /, *, = : ");
    String char = stdin.readLineSync()!;
    if(char=='+')
      res = sum();
    else if(char=='-')
      res = sub();
    else if(char=='*')
      res = mul();
    else if(char=='/')
      res = div();
    else if(char=='=')
      print("Result = $res");
    else
      print("Invalid Choise");
    stdout.write("If you want to do more operations; press 'y' : else; press 'n' : ");
    choise = stdin.readLineSync()!;
  }
}
double sum(){
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number : ");
  double b = double.parse(stdin.readLineSync()!);
  return a+b;
}
double sub(){
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number : ");
  double b = double.parse(stdin.readLineSync()!);
  return a-b;
}
double mul(){
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number : ");
  double b = double.parse(stdin.readLineSync()!);
  return a*b;
}
double div(){
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number : ");
  int b = int.parse(stdin.readLineSync()!);
  return a/b;
}