import 'dart:core';
import 'dart:html';
import 'dart:math';

void main() {
//Nums
  var x = 1;
  var y = 1.1;
  num xx = 1;
  xx += 2.5;
  //parse
  var one = int.parse('1');
  assert(one == 1);
  String oneAsString = one.toString();

//Strings
  var s1 = 'Single quotes work well for string literals. Laci\'s';
  var s2 = 'This is the value of s1: ${s1.toUpperCase()}';
  var s3 = 'Sing' 'le';
  //raw string
  var raw = r'In a raw string, not even \n gets special treatment.';
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;

//Booleans
  var fullName = '';
  assert(fullName.isEmpty);

  var nan = 0 / 0;
  assert(nan.isNaN);

//Lists
  var list = [1, 2, 3];
  var constantList = const [1, 2, 3];
  var list2 = [0, ...list];
  var nav = ['home', 'about', if (true) 'order'];
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

//Sets
  //A set in Dart is an unordered collection of unique items
  var halogens = {'flourine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  names.add('flourine');
  names.addAll(halogens);
  assert(names.length == 5);
  final constantSet = const {}; //compile time constant

//Maps
  //In general, a map is an object that associates keys and values.
  // Each key occurs only once, but you can use the same value multiple times.
  var gifts = {'first': 'choclate', 'second': 'car', 'third': 'house'};
  var nobleGases = Map<int, String>();
  //add values to an existing map
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  print(nobleGases[10]);
  final constantMap = const {2: 'drip'}; //compile time constant
  //Maps support spread operators (... and ...?) and collection if and for, just like lists do.

//Runes and grapheme Clusters
  // Unicode defines a unique numeric value for each letter, digit, and symbol used in all of the world’s writing systems. Because a Dart string is a sequence of UTF-16 code units, expressing Unicode code points within a string requires special syntax. The usual way to express a Unicode code point is \uXXXX, where XXXX is a 4-digit hexadecimal value. For example, the heart character (♥) is \u2665. To specify more or less than 4 hex digits, place the value in curly brackets. For example, the laughing emoji (😆) is \u{1f606}.
  // import 'package:characters/characters.dart';
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
}
