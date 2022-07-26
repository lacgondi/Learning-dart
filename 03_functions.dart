import 'dart:core';
import 'dart:io';

var _nobleGases = {2: 'atomic', 10: 'bomb'};

// bool isNoble(int atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

//named parameters
void enableFlags({bool? bold, bool? hidden}) {}

//required param
const scrollBar({key, required bool child});

//Optional params
String say(String from, String msg, [String? device])
{
  var result='$from says $msg';
  if(device!=null){
    result='$result with a $device';
  }
  return result;
}

//Default param values
void enableTanks({bool bold=false, bool hidden=false}){}

//Function to variable
var loudify=(String msg)=>'!!!${msg.toUpperCase()}!!!';

void main() {
  isNoble(2);
  enableFlags(bold: true, hidden: false);

  //first class object
  print(say('Lac','sheesh'));
  print(say('bro','damb', 'iphone'));

  print(loudify(say('gorr','kill mcu gods')));

  //anonymous function
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
  //Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code. You can “follow the curly braces outwards” to see if a variable is in scope.

  
}
