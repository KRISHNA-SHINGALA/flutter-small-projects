// Unit 1 — Example 6: Null safety
// Run: dart run 06_null_safety.dart

void main() {
  String? nickname;
  print('Nickname: ${nickname ?? 'not set'}');

  nickname = 'Niku';
  print('Length: ${nickname.length}');

  final raw = parseOptionalInt('42');
  print('Parsed: $raw');

  final bad = parseOptionalInt('abc');
  print('Bad parse: $bad');

  late final String cohortId;
  cohortId = assignCohort(2026);
  print('Cohort: $cohortId');
}

int? parseOptionalInt(String input) {
  return int.tryParse(input);
}

String assignCohort(int year) => 'COHORT-$year';
