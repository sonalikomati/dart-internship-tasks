import 'dart:io';

void main() {
  // Original list
  List<int> numbers = [5, 2, 9, 1, 7];

  print("Original List: $numbers");

  // Copies for sorting
  List<int> asc = List.from(numbers);
  List<int> desc = List.from(numbers);

  // ----------- ASCENDING SORT -----------
  for (int i = 0; i < asc.length - 1; i++) {
    for (int j = 0; j < asc.length - 1 - i; j++) {
      if (asc[j] > asc[j + 1]) {
        int temp = asc[j];
        asc[j] = asc[j + 1];
        asc[j + 1] = temp;
      }
    }
  }

  print("Ascending Order: $asc");

  // ----------- DESCENDING SORT -----------
  for (int i = 0; i < desc.length - 1; i++) {
    for (int j = 0; j < desc.length - 1 - i; j++) {
      if (desc[j] < desc[j + 1]) {
        int temp = desc[j];
        desc[j] = desc[j + 1];
        desc[j + 1] = temp;
      }
    }
  }

  print("Descending Order: $desc");

  // Sum
  int sum = 0;
  for (int n in numbers) {
    sum += n;
  }
  print("Sum of elements: $sum");

  // Min & Max
  int min = numbers[0];
  int max = numbers[0];

  for (int n in numbers) {
    if (n < min) min = n;
    if (n > max) max = n;
  }

  print("Minimum: $min");
  print("Maximum: $max");

  // Even & Odd count
  int even = 0, odd = 0;

  for (int n in numbers) {
    if (n % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  print("Even count: $even");
  print("Odd count: $odd");

  // ----------- SEARCH -----------
  stdout.write("\nEnter number to search: ");
  int target = int.parse(stdin.readLineSync()!);

  bool found = false;
  int position = -1;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      found = true;
      position = i;
      break;
    }
  }

  if (found) {
    print("Number found at index $position");
  } else {
    print("Number not found");
  }
}
