import 'dart:io';

void main(List<String> args) {
  print('Digite o seu nome: ');
  String? nome = stdin.readLineSync();
  print('Digite sua altura:');
  String? altura = stdin.readLineSync();
  print('Digite seu peso:');
  String? peso = stdin.readLineSync();
  if (nome == '') {
    nome = 'Anonimo';
  }
  if (altura == '') {
    altura = '1.60';
  }
  if (peso == '') {
    peso = '70';
  }
  print(nome);
  print(altura);
  print(peso);
  Pessoa pessoa = Pessoa(
      nome: nome!, peso: double.parse(peso!), altura: double.parse(altura!));
  double resultado = pessoa.calculeIMC();

  if (resultado < 18.5) {
    print('Abaixo do peso normal');
  } else if (resultado > 18.5 && resultado < 24.9) {
    print('Peso Normal');
  } else if (resultado > 25 && resultado < 29.9) {
    print('Excesso de peso');
  } else if (resultado > 30 && resultado < 34.9) {
    print('Obesidade classe 1');
  } else if (resultado > 35 && resultado < 39.9) {
    print('Obesidade classe 2');
  } else if (resultado >= 40) {
    print('Obesidade classe 3');
  }
}

class Pessoa {
  late String nome;
  late double peso;
  late double altura;
  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  double calculeIMC() {
    return peso / (altura * altura);
  }
}
