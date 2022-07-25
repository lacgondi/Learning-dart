import 'dart:core';
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
}
