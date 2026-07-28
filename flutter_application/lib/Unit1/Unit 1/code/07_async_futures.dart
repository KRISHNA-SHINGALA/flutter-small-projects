// Unit 1 — Example 7: Async and Futures
// Run: dart run 07_async_futures.dart

import 'dart:async';

Future<void> main() async {
  print('Fetching modules...');
  final modules = await fetchModules();
  print('Loaded: $modules');

  print('\nStreaming progress:');
  await for (final step in progressStream()) {
    print('  $step%');
  }

  try {
    await riskyDownload();
  } catch (e) {
    print('Handled error: $e');
  }
}

Future<List<String>> fetchModules() async {
  await Future.delayed(const Duration(milliseconds: 400));
  return ['Dart', 'Widgets', 'Layout', 'State'];
}

Stream<int> progressStream() async* {
  for (var i = 0; i <= 100; i += 25) {
    await Future.delayed(const Duration(milliseconds: 150));
    yield i;
  }
}

Future<void> riskyDownload() async {
  await Future.delayed(const Duration(milliseconds: 100));
  throw Exception('Network timeout');
}
