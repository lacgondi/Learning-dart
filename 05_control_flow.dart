import 'dart:core';
import 'dart:html';

void main() {
  bool? isRaining = true;
  bool isSnowing = false;
  bool bringRainCoat = false;
  bool wearJacket = false;

//If and else
  if (isRaining == true) {
    bringRainCoat = true;
  } else if (isSnowing == true) {
    wearJacket = true;
  } else {
    print('Let the car window down');
  }

//For loops
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  var set = [1, 2, 3, 4];
  for (var item in set) {
    print(item);
  }
  set.forEach(print);

//While and do-while
  while (true) {
    break; //Break
  }

  do {
    print('The last one');
  } while (false);

//Break and continue
  for (var i = 0; i < set.length; i++) {
    var item = set[i];
    if (set == 2) {
      continue; //skips to the next loop iteration
    }
  }

//Switch and case
  void doSomething() {}
  var command = 'Open';
  switch (command) {
    case 'Closed':
      doSomething();
      break;
    case 'Pending':
      doSomething();
      break;
    case 'Approved':
      doSomething();
      break;
    case 'Denied':
      doSomething();
      break;
    case 'Open':
      doSomething();
      break;
    default:
      print('nah cuh');
  }
  // support empty case clauses
  switch (command) {
    case 'CLOSED':
      doSomething();
      continue nowClosed;
    // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      doSomething();
      break;
  }

//Assert
  // During development, use an assert statement—assert(condition, optionalMessage);—to disrupt normal execution if a boolean condition is false
}
