class Employee {
  String name;
  double basicSalary;
  double bonus;

  Employee(this.name, this.basicSalary, this.bonus);

  double calSalaryWithBonus() {
    return basicSalary + bonus;
  }

  void display() {
    print("Name: $name");
    print("Basic Salary: ₹$basicSalary");
    print("Bonus: ₹$bonus");
    print("Total Salary: ₹${calSalaryWithBonus()}");
    print("----------------------");
  }
}

void main() {
  List<Employee> empList = [
    Employee("Abhi", 30000, 5000),
    Employee("Sakshi", 35000, 6000),
    Employee("Saanvi", 40000, 7000),
  ];

  for (var emp in empList) {
    emp.display();
  }
}
