import 'package:path/path.dart' as p;

void main(){
  String filePath = 'O:/Flutter/Flutter assignment/Flutter Doctor.txt';

  String directory = p.dirname(filePath);
  String fileName = p.basename(filePath);
  String extension = p.extension(filePath);

  print('File Path: $filePath');
  print('Directory: $directory');
  print('FIle Name: $fileName');
  print('Extension: $extension');
}