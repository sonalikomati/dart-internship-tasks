class Student {
  String name;
  int rollNumber;
  int marks;

  Student(this.name, this.rollNumber, this.marks);

  String calculateGrade() {
    if (marks >= 80) return "A";
    if (marks >= 60) return "B";
    if (marks >= 40) return "C";
    return "Fail";
  }

  void displayInfo() {
    print("Name: $name");
    print("Roll No: $rollNumber");
    print("Marks: $marks");
    print("Grade: ${calculateGrade()}");
    print("---------------------");
  }
}

void main() {
  List<Student> students = [
    Student("AAA", 1, 85),
    Student("BBB", 2, 72),
    Student("CCC", 3, 35),
  ];

  for (var s in students) {
    s.displayInfo();
  }
}
