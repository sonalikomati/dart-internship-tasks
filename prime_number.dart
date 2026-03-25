import 'dart:io';

void main() {
  // Take input from user
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  // 0 and 1 are not prime
  if (num <= 1) {
    isPrime = false;
  } else {
    // Check divisibility from 2 to num-1
    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break; // stop loop if divisible
      }
    }
  }

  // Print result
  if (isPrime) {
    print("Prime");
  } else {
    print("Not Prime");
  }
}
