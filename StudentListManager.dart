import 'dart:io';

class StudentManager {
  List<String> students = ["Abhi", "Sakshi", "Saanvi", "Teju"];

  void addStudent(String name) {
    students.add(name);
    print("Student added successfully.");
  }

  void displayStudents() {
    print("\nStudent List:");
    for (var s in students) {
      print(s);
    }
  }
}

void main() {
  StudentManager sm = StudentManager();

  while (true) {
    print("\n----- Student Manager -----");
    print("1. Add Student");
    print("2. Display Students");
    print("3. Exit");

    stdout.write("Enter your choice: ");
    String? input = stdin.readLineSync();

    int? choice = int.tryParse(input ?? "");

    if (choice == null) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    switch (choice) {
      case 1:
        stdout.write("Enter student name: ");
        String name = stdin.readLineSync()!;
        sm.addStudent(name);
        break;

      case 2:
        sm.displayStudents();
        break;

      case 3:
        print("Program exited.");
        return;

      default:
        print("Invalid choice");
    }
  }
}
