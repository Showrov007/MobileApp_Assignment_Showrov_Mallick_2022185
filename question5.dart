// Mixin Payable
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

// Mixin Reportable
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

// Abstract Class Employee
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();
}

// Manager Class
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;
}

// Developer Class
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() => "Senior Developer";

  @override
  double getBaseSalary() => 6000.0;
}

// Main Function
void main() {
  // Create Manager
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 1000);
  
  print("Manager: ${manager.name} (ID: ${manager.id}, Department: ${manager.department}, Team Size: ${manager.teamSize})");
  print("Job Title: ${manager.getJobTitle()}");
  print("Base Salary: ${manager.getBaseSalary()}");
  print("Calculated Salary: $managerSalary");
  manager.processPayment(managerSalary);
  print("Report: ${manager.generateReport(manager.name, manager.department)}\n");

  // Create Developer
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");
  double developerSalary = developer.calculateSalary(developer.getBaseSalary(), 500);

  print("Developer: ${developer.name} (ID: ${developer.id}, Department: ${developer.department}, Language: ${developer.programmingLanguage})");
  print("Job Title: ${developer.getJobTitle()}");
  print("Base Salary: ${developer.getBaseSalary()}");
  print("Calculated Salary: $developerSalary");
  developer.processPayment(developerSalary);
}
