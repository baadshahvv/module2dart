import 'dart:io';

double celciusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelcius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main(){
  print("Choose conversion type:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  stdout.write("Enter your choice (1 or 2): ");
  String? choice = stdin.readLineSync();

  if(choice =='1'){
    stdout.write("Enter temperature in Celsius: ");
    double? celsius = double.parse(stdin.readLineSync()?? '');
    double fahrenheit = celciusToFahrenheit(celsius);
    print("$celsius °C is equal to $fahrenheit °F");
  } else if(choice == '2'){
    stdout.write("Enter temperature in Fahrenheit: ");
    double? fahrenheit = double.parse(stdin.readLineSync()?? '');
    double celsius = fahrenheitToCelcius(fahrenheit);
    print("$fahrenheit °F is equal to $celsius °C");
  } else {
    print("Invalid choice. Please enter 1 or 2.");
    }
}