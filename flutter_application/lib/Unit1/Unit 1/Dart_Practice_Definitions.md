# Dart Fundamentals — Practice Definitions

Quick revision and self-test for Unit 1.

---

## 1. Dart

**Definition:** Dart is the programming language used by Flutter. It supports object-oriented, functional, and async programming with sound null safety.

---

## 2. `var`, `final`, and `const`

**Definition:** `var` infers type and allows reassignment. `final` is assigned once at runtime. `const` is a compile-time constant and deeply immutable when used with constant values.

---

## 3. Null safety

**Definition:** Dart’s type system distinguishes nullable (`T?`) from non-nullable (`T`) types, preventing null reference errors at compile time when code is sound.

---

## 4. `??` and `?.`

**Definition:** `??` returns the right-hand value if the left is null. `?.` calls a method or accesses a property only if the receiver is non-null.

---

## 5. `List`, `Set`, `Map`

**Definition:** Core collection types — ordered list, unique unordered set, and key-value map respectively.

---

## 6. `where` and `map`

**Definition:** Iterable methods that filter (`where`) or transform (`map`) elements lazily, often chained for concise data processing.

---

## 7. Class and constructor

**Definition:** A class defines a type with fields and behavior. Constructors initialize instances; named constructors use `ClassName.name()`.

---

## 8. Mixin

**Definition:** A mixin (`with`) adds reusable methods to a class without using inheritance, useful for shared behavior across unrelated types.

---

## 9. `Future`

**Definition:** A `Future<T>` represents a value or error available asynchronously in the future. It is consumed with `await` inside `async` functions.

---

## 10. `Stream`

**Definition:** A `Stream<T>` emits zero or more asynchronous events over time. Listeners use `await for` or stream subscriptions.

---

## 11. `async` / `await`

**Definition:** `async` marks a function that returns a `Future`. `await` pauses until a `Future` completes, without blocking the UI isolate’s event loop improperly when used correctly in Flutter.

---

## 12. `fold`

**Definition:** Reduces an iterable to a single value by applying a combining function across elements with an initial accumulator.

---

## Self-test

1. When do you use `final` vs `const`?  
2. What does `String?` mean?  
3. How do you run Dart without Flutter?  
4. What is the output of `[1,2,3].where((n) => n.isEven).length`?  
5. Why learn Dart before Flutter widgets?
