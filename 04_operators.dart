import 'dart:core';

void main() {
  var a = 0;
  var b = 10;
  var c;
  a++;
  a + b;
  a = b;
  a == b;
  c ? a : b;
  b is int;

  if (a % 2 == 0 && b % a == 1) {}
  int d = -3;
  assert(5 ~/ 2 == 3); //divide return int

  --a;

//type test operators
  (a as int).bitLength;

  if (a is int) {
    print('ye');
  }

//assignment operators
  a *= b;

//logical operators
  if (true && (a == 0 || a != 3)) {}

//Bitwise and shift operators
  final value = 0x22;
  final bitmask = 0x0f;
  assert((value & bitmask) == 0x02);
  assert((value & ~bitmask) == 0x20); //AND NOT, '~' 0s become 1s
  assert((value << 4) == 0x220); //shift left
  assert((value >>> 4) == 0x02); //unsigned shift right

//Conditional expressions
  //condition ? expr1 : expr2
  //If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
  //expr1 ?? expr2
  // If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.

  var visiblity = true ? 'pulic' : 'private';

  // If the boolean expression tests for null, consider using ??.
  String playerName(String? name) => name ?? 'Guest';

//Cascade notation
  // Cascades (.., ?..) allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code.

  // var paint = Paint()
  // ..color = Colors.black
  // ..strokeCap = StrokeCap.round
  // ..strokeWidth = 5.0;
  //=
  // var paint = Paint();
  // paint.color = Colors.black;
  // paint.strokeCap = StrokeCap.round;
  // paint.strokeWidth = 5.0;

  // If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation.
  //querySelector('#confirm') // Get an object.
  // ?..text = 'Confirm' // Use its members.
  // ..classes.add('important')
  // ..onClick.listen((e) => window.alert('Confirmed!'))
  // ..scrollIntoView();
  //=
  // var button = querySelector('#confirm');
  // button?.text = 'Confirm';
  // button?.classes.add('important');
  // button?.onClick.listen((e) => window.alert('Confirmed!'));
  // button?.scrollIntoView();

  //You can also nest cascased
}
