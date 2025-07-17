import 'dart:io';

void main() async{

  final fileName = 'example.txt';
  final data = 'This is a sample text written in the file.';

  try{
    final file = File(fileName);
    await file.writeAsString(data);
    print('Data Written to: $fileName');
  }catch (e){
    print('Error writing to file: $e');
    return;
  }

  try{
    final file = File(fileName);
    String contents = await file.readAsString();
    print('Data read from: $fileName : $contents');
  }catch (e){
    print('Error reading from file: $e');
  }
}