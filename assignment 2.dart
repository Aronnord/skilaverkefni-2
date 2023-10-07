import 'dart:io';

void main(){
  stdout.write('Please enter a number:');
  String? input =stdin.readLineSync();
  if (input != null) {
    try {
      int number = int.parse(input);
      printMultiplicationTable(number);
    } catch (e) {
      print('Please enter a number.');
    }
  }
}

void printMultiplicationTable(int number) {
  print('$number');
  for (int i = 1; i <= 10; i++) {
    int resault  = number * i;
    print('$number * $i = $resault');
  }
}