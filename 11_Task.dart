import 'dart:io';

int fibonacci(int n) {
  if (n <= 1) 
  return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  stdout.write("Enter the number of terms in the Fibonacci series: ");
  int? terms = int.tryParse(stdin.readLineSync() ?? '');
  
  if (terms != null && terms > 0) {
    print("Fibonacci series up to $terms terms:");
    for (int i = 0; i < terms; i++) {
      print(fibonacci(i));
    }
  } else {
    print("Please enter a valid positive integer.");
  }
}