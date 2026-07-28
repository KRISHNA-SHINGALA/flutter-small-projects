# Dart Fundamentals — Practical Examples and Exercises

Runnable code lives in `Unit 1/code/`. Run any file with:

```bash
dart run <filename>.dart
```

---

## Table of contents

1. Variables and types  
2. Control flow  
3. Functions  
4. Collections  
5. OOP  
6. Null safety  
7. Async / Futures  
8. Practice exercises  

---

## 1. Variables and types

See `01_variables_and_types.dart` — demonstrates `var`, `final`, `const`, strings, and multiline strings.

---

## 2. Control flow

See `02_control_flow.dart` — `for-in`, `while`, `if/else`, and `firstWhere`.

---

## 3. Functions

See `03_functions.dart` — named parameters, defaults, arrow syntax, `fold`.

---

## 4. Collections

See `04_collections.dart` — `List`, `Map`, `Set`, `where`, `reduce`.

---

## 5. OOP

See `05_oop.dart` — `Course` class, `mixin Timestamped`, inheritance with `LabModule`.

---

## 6. Null safety

See `06_null_safety.dart` — nullable types, `??`, `late`, `tryParse`.

---

## 7. Async

See `07_async_futures.dart` — `Future.delayed`, `async/await`, `Stream`, error handling.

---

## 8. Practice exercises

### Exercise 1 — Grade calculator

Write `grade_calculator.dart`:

- Accept a `List<int>` of assignment scores
- Return average as `double`
- Print letter grade using the same scale as `02_control_flow.dart`

### Exercise 2 — Student roster

Create a `Student` class with `id`, `name`, and `List<String> courses`.

- Method `addCourse(String course)` — no duplicates
- Method `summary()` — one-line string
- In `main`, enroll 2 students in overlapping courses and print summaries

### Exercise 3 — Async module loader

Write `load_module.dart`:

- `Future<String> loadModule(int index)` — delays 300ms, returns `"Module $index ready"`
- `main` loads modules 1–3 in parallel with `Future.wait`
- Print total elapsed time

### Exercise 4 — Nullable config

Parse environment-style config:

```dart
class AppConfig {
  final String apiBaseUrl;
  final int? timeoutSeconds;
  // fromMap(Map<String, String> env)
}
```

Handle missing keys with sensible defaults.

### Exercise 5 — Extension method

Add an extension on `String`:

```dart
extension TitleCase on String {
  String get titleCase => ...
}
```

Test with `"flutter mobile development"`.

---

## Solutions

Instructors: solution sketches are in `Unit 1/code/solutions/` (add as you teach). Students should attempt exercises before peeking.
