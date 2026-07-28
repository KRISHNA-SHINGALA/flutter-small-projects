# Dart Fundamentals — Complete Guide

**Unit 1** · Flutter Mobile Development Curriculum

---

## Learning outcomes

After this unit you can:

- Write Dart with sound null safety
- Use collections and functional iteration idioms
- Model data with classes, inheritance, and mixins
- Read and write basic `Future` and `Stream` code

---

## 1. Why Dart for Flutter?

Flutter’s UI and business logic are written in **Dart**. Dart is:

- **Soundly null-safe** — fewer null reference crashes at runtime
- **Fast to compile** — JIT for development, AOT for release
- **Familiar** — C-style syntax with modern features (collection `for`, cascades, named params)

Every Flutter widget and service you write is Dart code. Mastering Dart first makes Units 2–8 much easier.

---

## 2. Variables and types

| Keyword | Meaning |
|---------|---------|
| `var` | Type inferred; can reassign |
| `final` | Set once at runtime |
| `const` | Compile-time constant |
| `late` | Initialize before first read |

```dart
var count = 0;           // inferred int
final name = 'Flutter';  // cannot reassign
const maxItems = 100;    // compile-time
```

**Run:** `Unit 1/code/01_variables_and_types.dart`

---

## 3. Control flow

Dart supports `if`/`else`, `for`, `while`, `do-while`, `switch`, and collection-aware loops:

```dart
for (final item in items) { ... }
```

Use `firstWhere`, `where`, `map`, `fold` on iterables for expressive data transforms.

**Run:** `02_control_flow.dart`

---

## 4. Functions

- **Positional** and **named** parameters
- **Optional** named params with defaults: `{String title = 'Learner'}`
- **Required** named: `{required int percent}`
- **Arrow** functions for single expressions: `=>`

**Run:** `03_functions.dart`

---

## 5. Collections

| Type | Use |
|------|-----|
| `List<T>` | Ordered sequence |
| `Set<T>` | Unique items |
| `Map<K, V>` | Key-value lookup |

Common methods: `add`, `remove`, `contains`, `map`, `where`, `fold`, `reduce`.

**Run:** `04_collections.dart`

---

## 6. Object-oriented Dart

- **Classes** with fields, getters, methods
- **Constructors** — generative, named, `const`
- **Inheritance** — `extends`
- **Mixins** — `with` for reusable behavior
- **Interfaces** — `implements` (Dart has implicit interfaces on every class)

**Run:** `05_oop.dart`

---

## 7. Null safety

Dart 3 is **sound null safe**:

| Syntax | Meaning |
|--------|---------|
| `String?` | Nullable type |
| `!` | Assert non-null (use sparingly) |
| `??` | Fallback if null |
| `?.` | Conditional access |
| `late` | Deferred initialization |

Prefer `??` and early checks over `!` in production code.

**Run:** `06_null_safety.dart`

---

## 8. Async programming

- `Future<T>` — single async result
- `async`/`await` — readable async code
- `Stream<T>` — sequence of async events
- `async*` / `yield` — generate streams

In Flutter, `async`/`await` is used for API calls, file I/O, and platform channels. Always check `mounted` before updating UI after `await` (Unit 2+).

**Run:** `07_async_futures.dart`

---

## 9. Effective Dart habits (carry forward)

1. Prefer `final` over `var` when not reassigning
2. Use trailing commas in Flutter widget trees (formatting)
3. Name types clearly; avoid `dynamic` unless necessary
4. Keep functions small; extract when logic repeats
5. Handle errors with `try/catch` at boundaries (API, file)

---

## 10. Unit checklist

- [ ] All seven example files run with `dart run`
- [ ] Completed practical exercises
- [ ] Can explain null safety operators from memory
- [ ] Ready for Unit 2: Flutter widgets

---

## Next unit

**Unit 2 — Flutter setup, widgets, and Material** — you will turn Dart knowledge into on-screen UI with `runApp` and the widget tree.
