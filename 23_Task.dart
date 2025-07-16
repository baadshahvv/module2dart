import 'dart:io';

double getValidNumbers(String prompt){
  while(true){
    stdout.write(prompt);
    String? input = stdin.readLineSync();

    try{
      if(input != null){
        return double.parse(input);
      }
    }catch (e){
      print('Enter valid number');
    }
  }
}

String getValidOperators(){
  const validOperator = ['+','-','/','*'];
  while(true){
    stdout.write('Enter an operator [+,-,/,*]: ');
    String? op = stdin.readLineSync();

    if(op != null && validOperator.contains(op.trim())){
      return op.trim();
    }else{
      print('Invalid operator');
    }
  }
}

double calculate(double num1, double num2, String operator){
  switch(operator){
    case '+':
    return num1+num2;

    case '-':
    return num1-num2;

    case '*':
    return num1*num2;

    case '/':
    if(num2==0)throw Exception("Division by zero is not allowed.");
      return num1 / num2;
    default:
      throw Exception("Unsupported operator.");
  }
}

void main() {

  double num1 = getValidNumbers("Enter the first number: ");
  String operator = getValidOperators();
  double num2 = getValidNumbers("Enter the second number: ");

  try {
    double result = calculate(num1, num2, operator);
    print("\n✅ Result: $num1 $operator $num2 = $result");
  } catch (e) {
    print("❌ Error: ${e.toString()}");
  }
}