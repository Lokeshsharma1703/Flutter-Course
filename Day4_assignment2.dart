// to calculate Simple interest
import "dart:io";
void main()
{
  stdout.write("Enter principle : ");
  double? p = double.parse(stdin.readLineSync()!);
  stdout.write("Enter rate : ");
  double? r = double.parse(stdin.readLineSync()!);
  stdout.write("Enter time : ");
  double? t = double.parse(stdin.readLineSync()!);
  double SI = (p * r * t)/100;
  print("Simple interest is $SI");
}