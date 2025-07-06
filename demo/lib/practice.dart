import 'dart:io';

void main() {
  print("welcome to Dart");
  //print 
  stdout.write("enter the name:");
  
  //user input
  var name = stdin.readLineSync();
  print("welcome, $name");
}
