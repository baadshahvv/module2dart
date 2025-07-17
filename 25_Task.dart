import 'dart:async';

void main() async{

  print('Wait for 3 seconds');

  await Future.delayed(Duration(seconds: 3));
  print('Operation completed');
}