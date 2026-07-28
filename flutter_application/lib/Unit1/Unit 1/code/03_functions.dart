// Unit 1 — Example 3: Functions
// Run: dart run 03_functions.dart

void main() {
  print(greet('Nikunj'));
  print('Total: ${calculateTotal([19.99, 4.50, 12.00])}');
  print('Discounted: ${applyDiscount(100, percent: 15)}');

  final units = ['Dart', 'Widgets', 'Layout'];
  print(formatList(units, prefix: 'Unit'));
}

String greet(String name, {String title = 'Learner'}) {
  return 'Hello, $title $name!';
}

double calculateTotal(List<double> prices) {
  return prices.fold(0, (sum, price) => sum + price);
}

double applyDiscount(double amount, {required int percent}) =>
    amount * (1 - percent / 100);

String formatList(List<String> items, {String prefix = 'Item'}) {
  return items.asMap().entries.map((e) => '$prefix ${e.key + 1}: ${e.value}').join('\n');
}
