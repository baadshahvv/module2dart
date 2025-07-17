import 'dart:async';

Future<String> fetchDataPoint(int id) async{
  await Future.delayed(Duration(seconds: 1));
  return 'User $id';
}

Future<void> main() async{
  print('Fetching user list...');

  List<Future<String>> futures = [];
  for(int i = 1;i <= 5;i++){
    futures.add(fetchDataPoint(i));
  }

  List<String> users = await Future.wait(futures);

  print('All users loaded: ');
  for(var user in users){
    print(user);
  }
}