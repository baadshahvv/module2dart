import 'dart:io';
import 'dart:math';

void main(){
  final random = Random();
  final target = random.nextInt(10) + 1;

  print('Guess the number between(1 to 10)');
  
  var getHint = (int guess,int target) =>
      guess > target ? 'Too High' : (guess < target ? 'Too Low' : 'Correct Guess');

  int? guess;
  int attempts = 0;

  do{
    stdout.write('Enter your guess: ');
    guess = int.parse(stdin.readLineSync()?? '');
    attempts++;
    final Hint = getHint(guess,target);
    print(Hint);
  }while(guess != target);

  print('Congratulations! you guessed the number in $attempts attempts.');
}