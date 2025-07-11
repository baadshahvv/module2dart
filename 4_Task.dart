import 'dart:io';

void main(){

  const double pi = 3.14159;
  stdout.write("Enter the radius of the circle: ");
  double? radius = double.parse(stdin.readLineSync()!);

  double area = pi * radius * radius;
  double circumference = 2 * pi * radius;

  print("The area of the circle is: $area");
  print("The circumference of the circle is: $circumference");

}