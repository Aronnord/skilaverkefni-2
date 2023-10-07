import 'dart:io';
void main() {

  List<int> numbers = [];
  int count = 0;

  while (count < 5) {

    String input = stdin.readLineSync() ?? '';

    if (input.toLowerCase() == 'quit') {
      break;
    }

    try {
      int number = int.parse(input);
      numbers.add(number);
      count++;
    } catch (e) {
      print('Ógild tala.');
    }

    if (numbers.isEmpty) {
      print('Enginn tala valin');
    } else {
      int sum = 0;

      for (int number in numbers) {
        sum += number;
      }

      double average = sum / numbers.length;

      print('$sum');
      print('$average');
    }
  }
}