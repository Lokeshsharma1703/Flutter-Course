// Switch case
import "dart:io";
void main()
{
  stdout.write("Enter the day : ");
  String day = stdin.readLineSync()!;

  switch(day)
  {
      case "sun":
      {
        print("Today is Sunday");
        break;
      }
      case "mon":
      {
        print("Today is Monday");
        break;
      }
      case "tue":
      {
        print("Today is Tuesday");
        break;
      }
      case "wed":
      {
        print("Today is Wednesday");
        break;
      }
      case "thu":
      {
        print("Today is Thursday");
        break;
      }
      case "fri":
      {
        print("Today is Friday");
        break;
      }
      case "sat":
      {
        print("Today is Saturday");
        break;
      }
      default:
      {
        print("You entered some wrong input!");
        break;
      }
  }
}