import 'dart:io';

void main(){

  double divide(double a,double b){
    if(b==0){
      throw Exception("Cannot divide by Zero.");
    }
    return a/b;
  }

  try{
  stdout.write('Enter the Numerator: ');
  double Numerator = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the Denominator: ');
  double Denominator = double.parse(stdin.readLineSync()!);

  double result = divide(Numerator,Denominator);
  print('Result: $result');
}catch (e){
  print('Error: ${e.toString()}');
} 
}