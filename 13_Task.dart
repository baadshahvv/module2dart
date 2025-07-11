import 'dart:io';

void main(){

  stdout.write('Enter number of elements: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> number= [];

  for(int i=0;i<n;i++){
    stdout.write('Enter element ${i+1}: ');
    int num = int.parse(stdin.readLineSync()!);
    number.add(num);
  }

  List<int> asscendingList = List.from(number);
  List<int> descendingList = List.from(number);


  for(int i=0;i<asscendingList.length-1;i++){
    for(int j=0;j<asscendingList.length-i-1;j++){
      if(asscendingList[j]>asscendingList[j+1]){
        int temp = asscendingList[j];
        asscendingList[j] = asscendingList[j+1];
        asscendingList[j+1] = temp;
      }
    }
  }

  for(int i=0;i<descendingList.length-1;i++){
    for(int j=0;j<descendingList.length-i-1;j++){
      if(descendingList[j]<descendingList[j+1]){
        int temp = descendingList[j];
        descendingList[j] = descendingList[j+1];
        descendingList[j+1] = temp;
      }
    }
  }

  print('Original List: $number');
  print('Asscending List: $asscendingList');
  print('Descending List: $descendingList');
}