// Unit 1 — Example 2: Control flow
// Run: dart run 02_control_flow.dart

void main() {
  final scores = [72, 85, 91, 64, 88];

  for (final score in scores) {
    final grade = gradeLetter(score);
    print('Score $score → $grade');
  }

  var module = 1;
  while (module <= 3) {
    print('Studying module $module');
    module++;
  }

  final firstHigh = scores.firstWhere(
    (s) => s >= 90,
    orElse: () => -1,
  );
  print('First score ≥ 90: $firstHigh');
}

String gradeLetter(int score) {
  if (score >= 90) return 'A';
  if (score >= 80) return 'B';
  if (score >= 70) return 'C';
  if (score >= 60) return 'D';
  return 'F';
}
