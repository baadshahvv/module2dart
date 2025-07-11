import 'dart:io';

void main(){

  stdout.write('Enter the number of words: ');
  int n = int.parse(stdin.readLineSync()!);
  List<String> words = [];

  for(int i = 0;i<n;i++){
    stdout.write('Enter word ${i+1}: ');
    String word = stdin.readLineSync()!;
    words.add(word);
  }

  Set<String> uniqueWordsSet = Set<String>.from(words);

  List<String> uniqueWords = uniqueWordsSet.toList();
  uniqueWords.sort();

  print('Unique words in alphabetical order ');
  for(String word in uniqueWords){
    print(word);
  }
}