import 'dart:io';

void main(List<String> args) {
  bool isruning = true;
  while (isruning) {
    print('Digite um número até 10');
    String? number = stdin.readLineSync();
    if (int.parse(number!) <= 9) {
      print('Você digitou o número: ' + number);
    } else {
      isruning = false;
    }
  }
}
