import 'dart:io';

void main(){

  stdout.write('Enter string: ');
  String input = stdin.readLineSync()!;

  Map<String, int> charFrequency = {};

  for(int i=0;i<input.length;i++){
    String char = input[i];
    if(charFrequency.containsKey(char)){
      charFrequency[char] = charFrequency[char]! +1;
    }else{
      charFrequency[char] = 1;
    }
  }

  print('Character Frequencies: ');
  charFrequency.forEach((Char, freq){
    print('$Char : $freq');
  });
}