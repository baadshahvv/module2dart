import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() async{

  await initializeDateFormatting();
  final now = DateTime.now();
  final usFormatter = DateFormat.yMMMMEEEEd('en_US');
  final frFormatter = DateFormat.yMMMMEEEEd('fr_FR');

  print('Current Date (US): ${usFormatter.format(now)}');
  print('Current Date (FRANCE): ${frFormatter.format(now)}');


  double salary = 56000.50;
  final usCurrency = NumberFormat.currency(locale: 'en_US', symbol: '\$');
  final inCurrency = NumberFormat.currency(locale: 'en_IN',symbol: '₹');

  print('Salary (US): ${usCurrency.format(salary)}');
  print('Salary (INDIA): ${inCurrency.format(salary)}');


  double pi = 3.14159;
  final usDecimal = NumberFormat.decimalPattern('en_US');
  final inDecimal = NumberFormat.decimalPattern('en_IN');

  print('PI (US): ${usDecimal.format(pi)}');
  print('PI (INDIA): ${inDecimal.format(pi)}');
}