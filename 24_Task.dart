import 'dart:io';

void main(){

  List<int> numbers = [];

  print('Enter Integers separated by spaces');
  String? input = stdin.readLineSync();

  if(input != null){
    List<String> parts = input.split(' ');
    for(var part in parts){
      try{
        int number = int.parse(part);
        numbers.add(number);
      }catch(e){
        print('Invalid Input $part is not in integers');
      }
    }
  }
    print('\n List of Integers entered: $numbers');
}