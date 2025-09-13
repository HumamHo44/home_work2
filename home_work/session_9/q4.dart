// Q4 Create a class Employee with attributes name and salary.
// Add a method giveRaise(int amount)
// that increases the salary. In main(),
// create an employee, give them a raise, and print the new salary.

void main() {
  Employee employee = Employee('humam', 100);
  print('${employee.name} , ${employee.salary}');
  employee.giveRaise(200);
  print('${employee.name} , ${employee.salary}');
}

class Employee {
  String name;

  num salary;
  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    salary += amount;
  }
}
