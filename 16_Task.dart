import 'dart:io';

void main(){

  Map<String, String> addressBook = {};

  while(true){

    print('1. Add Contact');
    print('2. Update Contact');
    print('3. Remove Contact');
    print('4. View All Contact');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();
  

  switch (choice) {
    case '1':
    stdout.write('Enter Name: ');
    String? name = stdin.readLineSync();
    stdout.write('Enter Contact Number: ');
    String? number = stdin.readLineSync();

    if(name != null && number != null){
      addressBook[name] = number;
      print('Contact Added');
    }
    break;

    case '2':
    stdout.write('Enter contact name to update: ');
    String? name = stdin.readLineSync();
    if (addressBook.containsKey(name)){
      stdout.write('Enter New Number: ');
      String? newNumber = stdin.readLineSync();
      if (newNumber != null){
        addressBook[name!] = newNumber;
        print('Contact Updated');
      }
    }else{
      print('Contact not Found');
    }
    break;

    case '3':
    stdout.write('Enter Name to remove: ');
    String? name = stdin.readLineSync();
    if (addressBook.containsKey(name)){
      addressBook.remove(name);
      print('Contact Removed');
    }else{
      print('Contact Not Found');
    }
    break;

    case '4':
    print('Address Book');
    addressBook.forEach((name, number){
      print('Name: $name, Phone: $number');
    });
    break;

    case '5':
    print('Exited');
    return;

    default:
    print('Invalid Choice');
  }
}
}