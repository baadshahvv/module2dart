import 'dart:io';
main(){
    stdout.write("Enter your name : ");
    String? name = stdin.readLineSync();
    stdout.write("Enter your age : ");
    String? ageInput = stdin.readLineSync(); 
    int? age = int.tryParse(ageInput ?? '');
    if (name != null && age != null) {
        int yearsLeft = 100 - age;
        print("Hello $name, you have $yearsLeft years left until you turn 100.");
    } else {
        print("Invalid input. Please enter valid name and age.");
    }   
}