import 'dart:io';

class Student {
  String name;
  int rollNumber;
  double marks;
  String grade = '';

  Student(this.name, this.rollNumber, this.marks);

  void calculateGrade() {
    if (marks >= 90) {
      grade = 'A';
    } else if (marks >= 75) {
      grade = 'B';
    } else if (marks >= 60) {
      grade = 'C';
    } else if (marks >= 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }
  }

  void display() {
    print('Name: $name');
    print('Roll No: $rollNumber');
    print('Marks: $marks');
    print('Grade: $grade');
    print('------------------------');
  }
}

void main() {
  List<Student> students = [];

  stdout.write("Enter number of students: ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    print("\nEnter details for Student ${i + 1}");

    stdout.write("Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Roll Number: ");
    int roll = int.parse(stdin.readLineSync()!);

    stdout.write("Marks: ");
    double marks = double.parse(stdin.readLineSync()!);

    Student student = Student(name, roll, marks);
    student.calculateGrade();
    students.add(student);
  }

  print("\n---------- Student Result List ------");

  for (var student in students) {
    student.display();
  }
}
