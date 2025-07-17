import 'dart:async';

Future<void> fetchWeatherData() async{
  print('Requesting weather data.');
  await Future.delayed(Duration(seconds: 1));
  print('Connecting to weather server.');
  await Future.delayed(Duration(seconds: 1));
  print('Fetching latest weather data...');
  await Future.delayed(Duration(seconds: 2));
  print('Weather data loaded Successfully');
}

void main() async{
  await fetchWeatherData();
}