Stream<int> generateNumbers(int maxCount) async*{
  for(int i = 1;i <= maxCount;i++){
  await Future.delayed(const Duration(seconds: 1));
  yield i;
  }
}

void main() async{
  print('Stream started');

  await for(final value in generateNumbers(5)){
    print('Received: $value');
  }
  print('Stream ended.');
}