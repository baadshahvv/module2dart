import 'dart:io';

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? '');
  if (number != null && number >= 0) {
    print('Factorial of $number is ${factorial(number)}');
  } else {
    print('Invalid input. Please enter a non-negative integer.');
  }
}