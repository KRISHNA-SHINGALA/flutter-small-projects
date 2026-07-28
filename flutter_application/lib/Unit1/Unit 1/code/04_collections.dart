// Unit 1 — Example 4: Collections
// Run: dart run 04_collections.dart

void main() {
  final modules = ['Dart', 'Widgets', 'Layout', 'State'];
  modules.add('Navigation');
  print('Modules: $modules');

  final hoursByModule = <String, int>{
    'Dart': 6,
    'Widgets': 8,
    'Layout': 6,
  };
  hoursByModule['State'] = 8;
  print('Hours map: $hoursByModule');

  final tags = {'flutter', 'dart', 'mobile', 'dart'};
  print('Unique tags: $tags');

  final completed = modules.where((m) => m.length > 5).toList();
  print('Long names: $completed');

  final totalHours = hoursByModule.values.reduce((a, b) => a + b);
  print('Total hours (mapped modules): $totalHours');
}
