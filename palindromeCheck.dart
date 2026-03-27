// 26th march - Day 37
import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  String original = input.toLowerCase();

  String reversed = original.split('').reversed.join('');

  if (original == reversed) {
    print("Palindrome");
  } else {
    print("Not Palindrome");
  }
}
