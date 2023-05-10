void main(List<String> args) {
  final medico =
      Medico(imc: '25.555', nome: 'Matheus', peso: 79.9, altura: 1.80);
  print(medico.calculeIMC());
}

class Medico extends Pessoa {
  late String imc;

  Medico({
    required this.imc,
    required String nome,
    required double peso,
    required double altura,
  }) : super(
          nome: nome,
          altura: altura,
          peso: peso,
        );
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
