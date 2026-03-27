//Day 38 - 27th march

void main() {
  // Create a list with duplicate values
  List<int> numbers = [1, 2, 2, 3, 4, 4, 4, 5];

  // Map to store frequency
  Map<int, int> frequency = {};

  // Loop through list
  for (int i = 0; i < numbers.length; i++) {
    int num = numbers[i];

    // Count occurrences
    if (frequency.containsKey(num)) {
      frequency[num] = frequency[num]! + 1;
    } else {
      frequency[num] = 1;
    }
  }

  // Print frequency of each number
  print("Frequency of numbers:");
  frequency.forEach((key, value) {
    print("$key : $value");
  });
}
