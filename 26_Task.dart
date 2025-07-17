import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async{
  final url = Uri.parse('https://jsonplaceholder.typicode.com/albums/1');
  try{
    final response = await http.get(url);
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      print('Data loaded successfully: $data');
    }else{
      print('Failed to load data. Status code ${response.statusCode}');
    }
  }catch(e){
    print('Error loading data: $e');
  }
}

void main() async{
  print('Fetching data from API....');
  await fetchData();
  print('Done!');
}