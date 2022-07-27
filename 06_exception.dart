import 'dart:core';
import 'dart:html';

void distanceTo(Point other) => throw UnimplementedError();

void breedMoreLlamas() {}
void buyMoreLlamas() {}
void cleanLlamaStalls() {}

void main() {
//Throw
  //throw FormatException('expected 1');

  //throw 'out of llamas';

//Catch
  try {
    breedMoreLlamas();
  } on int {
    buyMoreLlamas();
  }

  //The first catch clause that matches the thrown object’s type handles the exception.
  //As the preceding code shows, you can use either on or catch or both. Use on when you need to specify the exception type. Use catch when your exception handler needs the exception object.
  try {
    breedMoreLlamas();
  } on int {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
    rethrow;
  }

//Finally
  //To ensure that some code runs whether or not an exception is thrown, use a finally clause.
  try {
    breedMoreLlamas();
  } finally {
    // Always clean up, even if an exception is thrown.
    cleanLlamaStalls();
  }
}
