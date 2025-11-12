void main() {
  // Basic data types
  String name = "John Doe";
  int age = 25;
  double height = 5.9;
  bool isStudent = true;

  // Display basic info
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");

  // Call functions
  double bmi = calculateBMI(70.0, 1.76); // weight in kg, height in meters
  String grade = getGrade(85);

  print("BMI: ${bmi.toStringAsFixed(1)}");
  print("Grade: $grade");
}

// Function to calculate BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// Function to get grade
String getGrade(int score) {
  if (score >= 90) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}
