import 'dart:io';

void main(){

  stdout.write("Enter First Number:");
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number:");
  double? num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Choose an operation (+, -, *, /): ");
  String? operation =  stdin.readLineSync();

  double? result;
  switch (operation) {

    case'+':
      result = num1+num2;
      print("Result: $num1 + $num2 = $result");
      break;
    case'-':
      result = num1-num2;
      print("Result: $num1 - $num2 = $result");
      break;
    case'*':
      result = num1*num2;
      print("Result: $num1 * $num2 = $result");
      break;
    case'/':
      if (num2 == 0) {
        print("Error: Division by zero is not allowed.");
        return;
      } else {
         result = num1/num2;
        print("Result: $num1 / $num2 = $result");
        break;
      }
    default:
      print("Invalid operation. Please choose +, -, *, or /.");
      return;
    
  }
}