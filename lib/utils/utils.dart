import 'dart:math';

final Random randomizer = Random();

/// Generates a random integer between [min] and [max] (inclusive).
int randomInt(int min, int max) {
  return min + randomizer.nextInt(max);
}
