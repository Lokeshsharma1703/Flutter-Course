import "dart:io";
void main(){
  stdout.write("Enter first no. : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second no. : ");
  int b = int.parse(stdin.readLineSync()!);
  int result = sum(a,b);
  print("Sum of $a and $b is $result");
}
int sum(int a, int b){
  return a+b;
}