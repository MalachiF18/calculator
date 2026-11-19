/*
Copyright 2019 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
import 'dart:math' as math;

double log10(num x) {
  return math.log(x) / math.log(10);
}

int factorial(int number) {
  if (number < 0) {
    throw ArgumentError.value(number, 'number', 'Must be non-negative');
  }
  // The empty product is one, so this also handles 0! correctly.
  var result = 1;
  for (var factor = 2; factor <= number; factor++) {
    result *= factor;
  }
  return result;
}
