import 'dart:core';
import 'dart:html';

void main() {
//Hello World
  print('Hello, World!');

  var name = 'Bob';
//isn't restricted to a single type
  Object nameObj = 'Bob';
  String nameStr = 'Bob';
  dynamic anything = 'change';
  print(name);
  print(nameObj);
  print(nameStr);
  print(anything);

//Default values
  int? lineCount;
  assert(lineCount == 10);
  print(lineCount);

//Late variables
  late String laterBro;
  laterBro = 'now haha';
  print(laterBro);

//Final and const
// The const keyword isn’t just for declaring constant variables. You can also use it to create constant values, as well as to declare constructors that create constant values.
  final double pie = 3.14;
  const bar =1000000;
  print(pie);
  print(1.01325*bar);
  //typecast
  const Object i = 3;
  const list =[i as int];
}
