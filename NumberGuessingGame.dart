import 'dart:io';
import 'dart:math';

void main() {
  // Generate random number between 1 and 10
  Random random = Random();
  int target = random.nextInt(10) + 1; // 0–9 → +1 → 1–10

  int attempts = 3;

  print("🎯 Welcome to Number Guessing Game!");
  print("Guess a number between 1 and 10");
  print("You have $attempts attempts\n");

  // Loop for attempts
  for (int i = 1; i <= attempts; i++) {
    stdout.write("Attempt $i - Enter your guess: ");

    int guess = int.parse(stdin.readLineSync()!);

    // Check if correct
    if (guess == target) {
      print("✅ Correct! You guessed the number.");
      return; // End game
    }

    // Give hint
    if (guess < target) {
      print("Hint: Try a higher number\n");
    } else {
      print("Hint: Try a lower number\n");
    }
  }

  // If all attempts fail
  print("❌ Game Over! The correct number was $target");
}
