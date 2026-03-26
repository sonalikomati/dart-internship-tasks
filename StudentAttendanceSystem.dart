import 'dart:io';

class Student {
  String name;
  bool isPresent;

  Student(this.name, {this.isPresent = false});
}

void main() {
  List<Student> students = [
    Student("Abhi"),
    Student("Sakshi"),
    Student("Saanvi"),
    Student("Teju"),
    Student("Rahul"),
    Student("Aman"),
    Student("Priya"),
    Student("Sneha"),
    Student("Karan"),
    Student("Riya"),
  ];

  while (true) {
    print("\n----- Student Attendance System -----");
    print("1. Mark Attendance");
    print("2. Display Attendance");
    print("3. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("\nStudent List:");
        for (int i = 0; i < students.length; i++) {
          print("${i + 1}. ${students[i].name}");
        }

        stdout.write(
          "Enter student numbers to mark present(use comman for multiple value): ",
        );
        String input = stdin.readLineSync()!;

        List<String> numbers = input.split(',');

        for (var num in numbers) {
          int index = int.parse(num.trim()) - 1;

          if (index >= 0 && index < students.length) {
            students[index].isPresent = true;
          }
        }

        print("Attendance marked successfully.");
        break;

      case 2:
        int present = 0;
        int absent = 0;

        print("\nAttendance List:");

        for (var s in students) {
          String status = s.isPresent ? "Present" : "Absent";
          print("${s.name} - $status");

          if (s.isPresent) {
            present++;
          } else {
            absent++;
          }
        }

        print("\nTotal Present: $present");
        print("Total Absent: $absent");
        break;

      case 3:
        print("Program exited.");
        return;

      default:
        print("Invalid choice");
    }
  }
}
