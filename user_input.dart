import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  double number1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter number 2: ");
  double number2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter number 3: ");
  double number3 = double.parse(stdin.readLineSync()!);

  double sum = number1 + number2 + number3;
  double avg = sum / 3;

  stdout.write("Sum: $sum");
  stdout.write("\nAverage: $avg");
}
