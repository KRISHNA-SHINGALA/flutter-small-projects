// Unit 1 — Example 5: OOP — classes, inheritance, mixins
// Run: dart run 05_oop.dart

void main() {
  final course = Course(
    id: 'FLUTTER-101',
    title: 'Flutter Mobile Development',
    credits: 3,
  );

  course.enroll('student-42');
  course.enroll('student-42'); // duplicate ignored

  print(course.summary());
  print('Enrolled count: ${course.enrolledCount}');

  final lab = LabModule(title: 'Widget lab', durationHours: 2);
  print(lab.describe());
}

abstract class Identifiable {
  String get id;
}

mixin Timestamped {
  DateTime get createdAt => DateTime.now();
}

class Course with Timestamped implements Identifiable {
  @override
  final String id;
  final String title;
  final int credits;
  final Set<String> _students = {};

  Course({
    required this.id,
    required this.title,
    required this.credits,
  });

  void enroll(String studentId) => _students.add(studentId);

  int get enrolledCount => _students.length;

  String summary() => '$title ($id) — $credits cr, ${_students.length} students';
}

class LabModule extends Course {
  final int durationHours;

  LabModule({required String title, required this.durationHours})
      : super(id: 'LAB-${title.hashCode}', title: title, credits: 0);

  String describe() => 'Lab: $title — ${durationHours}h (created ${createdAt.toIso8601String()})';
}
