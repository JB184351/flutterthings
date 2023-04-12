import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  // Odd or Even
  var askForNumber = "Please give me a real number";
  print(askForNumber);

  int? num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 1) {
    print("$num is odd");
  } else {
    print("$num is even");
  }

  // Is Leap Year

  print("Give a year to see if it's a Leap Year or not");

  int? year = int.parse(stdin.readLineSync()!);

  if (year <= 0) {
    print("A year has to be greater than 0");
  } else if (year % 100 == 0 && year % 400 == 0) {
    print("$year is a leap year");
  } else if (year % 4 == 0 && year % 100 != 0) {
    print("$year is a leap year");
  } else if (year % 4 == 0 && year % 100 == 0) {
    print("$year is not a leap year");
  }

  // Armstrong number
  print("Please give me a number to test if your number is an armstrong number or not");

  int? armstrongNum = int.parse(stdin.readLineSync()!);

  var digits = armstrongNum.toString().length;
  var stringNum = armstrongNum.toString();

  var digitsAdded = 0;

  for (int i = 0; i < stringNum.length; i++) {
      var numToBeAdded = int.parse(stringNum[i]);

      numToBeAdded = pow(numToBeAdded, digits).toInt();

      digitsAdded += numToBeAdded;
  }

  if (digitsAdded == armstrongNum ) {
    print("$armstrongNum is an armstrong number");
  } else {
    print("$armstrongNum is not an armstrong number");
  }
}
