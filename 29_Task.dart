void main(){

  List<int> list1 = [1,3,4,2];
  List<int> list2 = [2,6,7,1];
  List<int> list3 = [5,4,3,8];

  var combinedList = [...list1,...list2,...list3];

  var uniqueList = combinedList.toSet().toList();

  uniqueList.sort();

  print('Old combined list: $combinedList');
  print('Combined and sorted unique list: $uniqueList');
}