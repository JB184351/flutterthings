// Get the sum of 2 numbers
int sum(int num1, int num2) {
  return num1 + num2;
}

// Reverse a string with arrow function
String reversedString(String toBeReversed) => toBeReversed.split('').reversed.join();

// Palindrone
bool isPalindrone(String toCheck) => toCheck == toCheck.split('').reversed.join();

// Factorial
int factorial(int num) {
  int count = num;
  int factorial = 1;

  while(count != 0) {
    factorial *= count;
    count--;
  }

  return factorial;
}

void main(List<String> arguments) {
    print(sum(2, 4));
    print(reversedString("firetruck"));
    print(isPalindrone("wow"));
    print(isPalindrone("bankai"));
    print(factorial(5));
}
