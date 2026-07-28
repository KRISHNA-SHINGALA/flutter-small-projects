// Unit 1 — Example 1: Variables and types
// Run: dart run 01_variables_and_types.dart

void main() {
  // Inference
  var name = 'Flutter Curriculum';
  final year = 2026;
  const pi = 3.14159;

  // Explicit types
  String role = 'student';
  int modules = 8;
  double progress = 0.125;
  bool isEnrolled = true;

  print('Course: $name ($year)');
  print('Role: $role | Modules: $modules | Progress: ${progress * 100}%');
  print('Enrolled: $isEnrolled | pi: $pi');

  // String interpolation and multiline
  final summary = '''
  Learner: $role
  Completed modules: ${(progress * modules).round()}
  ''';
  print(summary);
}
