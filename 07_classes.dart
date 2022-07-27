import 'dart:core';
import 'dart:html';
import 'dart:mirrors';

//Mixin-based inheritance means that although every class (except for the top class, Object?) has exactly one superclass, a class body can be reused in multiple class hierarchies.

//Instance variables
// All uninitialized instance variables have the value null.
class Pointy {
  double? x;
  double? y;
  double z = 0;
  //Instance variables can be final, in which case they must be set exactly once.
  final String name = '';
  final DateTime start = DateTime.now();
  Pointy(
    this.x,
    this.y,
    this.z,
  ) {
    this.x = x;
    this.y = y;
  }
  //Subclasses don’t inherit constructors from their superclass.
  Pointy.emptyConstructor();

  //Initalizer list
  Pointy.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }

  // Delegates to the main constructor.
  //Pointy.alongXAxis(double x) : this(x, 0);
}

//Invoking a non-default superclass constructor
//1. initializer list
//2. superclass’s no-arg constructor
//3. main class’s no-arg constructor

//In the following example, the constructor for the Employee class calls the named constructor for its superclass, Person.
class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(super.data) : super.fromJson() {
    print('in Employee');
  }
}

//Factory constructors
// Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class.
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

void main() {
//Using class members
  var p = Point(2, 2);
  print(p.y);
  double distanceTo = p.distanceTo(Point(4, 4));
  // If p is non-null, set a variable equal to its y value.
  var a = p?.y;

//Using constructors
  var p1 = Point(2, 2);
  //var p2 = new Point.fromJson({'x': 1, 'y': 2});

  //You can omit all but the first use of the const keyword:
  const pointAndLine = {
    'point': [Point(0, 0)],
    'line': [Point(1, 10), Point(-2, 11)],
  };

//Getting an object's type
  var aa = 3;
  print(aa.runtimeType);

//-----
  var pointyP = Pointy();
  pointyP.x = 4;
}
