void main(){

  List<int> numbers = [1,2,3,4,5];

  int square(int x) => x*x;
  int cube(int x) => x*x*x;
  double halve(int x) => x/2;

  List<Type> applyFunction<Type>(List<int> numbers,Type Function(int) transform){
    return numbers.map(transform).toList();
  }

  var squares = applyFunction(numbers, square);
  var cubes = applyFunction(numbers, cube);
  var halves = applyFunction(numbers, halve);

  print('Original: $numbers');
  print('Squares: $squares');
  print('Cubes: $cubes');
  print('Halves: $halves');
}