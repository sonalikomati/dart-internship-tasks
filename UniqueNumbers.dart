//import 'dart:io';

void main() {
  //stdout.write("Enter numbers separated by commas: ");
  //String input = stdin.readLineSync()!;

  //List<int> numbers = input.split(',').map((e) => int.parse(e.trim())).toList();

  List<int> numbers = [1, 2, 1, 3];

  // Use Set to remove duplicates
  List<int> uniqueNumbers = numbers.toSet().toList();

  //List<int> uniqueNumbers = uniqueSet.toList();

  print("original numbers: $numbers");
  print("Unique numbers: $uniqueNumbers");
}
