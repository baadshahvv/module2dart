List<int> findLargestAndSmallest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty');
  }

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
    if (number < smallest) {
      smallest = number;
    }
  }

  return [largest, smallest];
}

void main() {
  List<int> numbers = [34, 67, 23, 89, 12, 45, 78];

  try {
    List<int> result = findLargestAndSmallest(numbers);
    print('Largest number: ${result[0]}');
    print('Smallest number: ${result[1]}');
  } catch (e) {
    print(e);
  }
}