class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  void displayEmployee() {
    print("Employee Name: $name");
    print("Employee ID: $id");
    print("Salary: ₹$salary");
    print("-------------------");
  }
}

void main() {
  Employee e1 = Employee("emp1", 101, 35000);
  Employee e2 = Employee("emp2", 102, 42000);
  Employee e3 = Employee("emp3", 103, 30000);

  e1.displayEmployee();
  e2.displayEmployee();
  e3.displayEmployee();
}
