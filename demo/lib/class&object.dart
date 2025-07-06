import 'dart:io';

void main() {
  print("welcome to Dart");
  //print
  stdout.write("enter the name:");

  //user input
  var name = stdin.readLineSync();
  print("welcome, $name");

  //creating object
  new Human();
  
  //creating object without new keyword 
  Human();
}

//creating class
class Human {
  // default Consructor
  Human();
}
