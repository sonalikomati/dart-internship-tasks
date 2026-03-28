import 'dart:io';
import 'dart:math';

void main() {
  // Take password length from user
  stdout.write("Enter password length: ");
  int length = int.parse(stdin.readLineSync()!);

  // Character sets
  String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lower = "abcdefghijklmnopqrstuvwxyz";
  String numbers = "0123456789";
  String special = "!@#\$%^&*()_+-=[]{}|;:,.<>?";

  // Combine all characters
  String allChars = upper + lower + numbers + special;

  Random random = Random();
  String password = "";

  // Generate password
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(allChars.length);
    password += allChars[index];
  }

  // Print generated password
  print("\nGenerated Password: $password");
}
