import 'dart:io';

void main() async{

  stdout.write('Enter the file name: ');
  String? filepath = stdin.readLineSync();

  if(filepath == null || filepath.isEmpty){
    print('No file name entered');
    return;
  }

  try{
    File file = File(filepath);
    String contents = await file.readAsStringSync();

    print('\n File Contents: \n');
    print(contents);
  }catch (e){
    print('File not found: $e');
  }
}