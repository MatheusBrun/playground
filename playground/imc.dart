import 'dart:io';

void main(List<String> args) {
  double peso = getPeso();
  double altura = getAltura();
  double resultado = calcImc(altura: altura, peso: peso);

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

double calcImc({required double altura, required double peso}) {
  double resultado = peso / (altura * altura);
  return resultado;
}

double getPeso() {
  print('Digite seu peso:');
  String? peso = stdin.readLineSync();
  if (peso == null) {
    return 0.0;
  } else {
    return double.parse(peso);
  }
}

double getAltura() {
  print('Digite sua altura:');
  String? altura = stdin.readLineSync();
  if (altura == null) {
    return 0.0;
  } else {
    return double.parse(altura);
  }
}
