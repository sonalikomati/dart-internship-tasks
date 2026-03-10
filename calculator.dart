import 'dart:io';

void main() {
  try {
    stdout.write("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    stdout.write("1.Add \n2.Sub \n3.Multiply \n4.Divide\n");
    stdout.write("Enter your choice: ");
    int op = int.parse(stdin.readLineSync()!);

    double result;

    switch (op) {
      case 1:
        result = num1 + num2;
        print("Result: $result");
        break;

      case 2:
        result = num1 - num2;
        print("Result: $result");
        break;

      case 3:
        result = num1 * num2;
        print("Result: $result");
        break;

      case 4:
        if (num1 == 0 || num2 == 0) {
          throw Exception("Cannot divide by zero");
        }
        result = num1 / num2;
        print("Result: $result");
        break;

      default:
        print("Invalid choice");
    }
  } catch (e) {
    stdout.write("Error: $e");
  }
}
