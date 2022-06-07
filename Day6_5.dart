/*
  Global scope : which is accessible in the entire program
  Local scope : which is accessible in the scope in which it is defined
 */

var name = "Microsoft";
void main(){
  companyname();
}
companyname(){
  print(name);
}
// companyname(){
//   var name  = "Google";
//   print(name);
// }