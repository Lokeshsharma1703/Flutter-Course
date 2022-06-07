import "dart:io";
main(){
  String name = stdin.readLineSync()!;
  Sayhello(name);
}
Sayhello(String name){
  print("Hello $name");
}