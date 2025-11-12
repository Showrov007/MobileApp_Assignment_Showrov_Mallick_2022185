import 'dart:math';

void main() {
  // List of student names
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // Map to store student scores
  Map<String, int> scores = {};

  Random random = Random();

  // Assign random scores (60–100)
  for (var student in students) {
    scores[student] = 60 + random.nextInt(41);
  }

  // Show all scores
  print("Student Scores:");
  for (var entry in scores.entries) {
    print("${entry.key}: ${entry.value}");
  }

  // Find highest, lowest, and average
  int highest = scores.values.reduce((a, b) => a > b ? a : b);
  int lowest = scores.values.reduce((a, b) => a < b ? a : b);
  double average = scores.values.reduce((a, b) => a + b) / scores.length;

  String topStudent = scores.keys.firstWhere((k) => scores[k] == highest);
  String lowStudent = scores.keys.firstWhere((k) => scores[k] == lowest);

  print("\nHighest: $topStudent ($highest)");
  print("Lowest: $lowStudent ($lowest)");
  print("Average Score: ${average.toStringAsFixed(2)}\n");

  // Categorize using switch
  print("Performance Category:");
  for (var entry in scores.entries) {
    int score = entry.value;
    String category;

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }

    print("${entry.key}: $score → $category");
  }
}
