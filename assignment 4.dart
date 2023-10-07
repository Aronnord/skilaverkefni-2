import 'dart:io';

void main() {
  String input = stdin.readLineSync() ?? '';

  int? num = int.tryParse(input);
  if (num != null) {
    int digitCount = 0;

    if (num < 0) {
      num = -num;
    }

    while (num !> 0) {
      digitCount++;
      num ~/= 10;
    }

    print('Number of digits: $digitCount');
  }
}