import 'dart:io';

class Emp {
  String name;
  double salary;

  Emp(this.name, this.salary);

  double calBonus() {
    return salary * 0.10;
  }

  void displayDetails() {
    print("Employee Name: $name");
    print("Salary: ₹$salary");
    print("Bonus (10%): ₹${calBonus()}");
  }
}

void main() {
  stdout.write("Enter Employee Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Salary: ");
  double salary = double.parse(stdin.readLineSync()!);

  Emp e1 = Emp(name, salary);

  print("\nEmployee Details:");
  e1.displayDetails();
}
