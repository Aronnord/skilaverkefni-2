
import 'dart:io';

void main() {
  List<int> numbers = [];
  int count = 0;

  while (count < 5) {
    String input = stdin.readLineSync() ?? '';

    if (input.toLowerCase() == 'quit') {
      break;
    }

    int? number = int.tryParse(input);

    if (number != null) {
      numbers.add(number);
      count++;
    } else {
      print('Invalid number.');
    }
  }

  if (numbers.isEmpty) {
    print('No numbers entered.');
  } else {
    int sum = 0;

    for (int number in numbers) {
      sum += number;
    }

    double average = sum / numbers.length;

    print('Sum: $sum');
    print('Average: $average');
  }
}