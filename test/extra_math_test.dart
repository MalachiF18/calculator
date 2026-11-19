import 'package:calculator/extraMath.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('factorial identity and positive integers', () {
    expect(factorial(0), 1);
    expect(factorial(1), 1);
    expect(factorial(5), 120);
    expect(factorial(10), 3628800);
  });
  test('negative factorial is outside the supported domain', () {
    expect(() => factorial(-1), throwsArgumentError);
  });
}
