import "dart:io";
void main()
{
  stdout.write("Enter your marks : ");
  double marks = double.parse(stdin.readLineSync()!);

  if(marks>=91)
    print("Garde 'O'");
  else if(marks>=81)
    print("Grade 'A+'");
  else if(marks>=71)
    print("Grade 'A'");
  else if(marks>=61)
    print("Grade 'B+'");
  else if(marks>=51)
    print("Grade 'B'");
  else if(marks>=41)
    print("Grade 'C'");
  else
    print("Fail");
}