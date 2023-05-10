/*
Switch / case
Estrutura de controle que compara a equalidade de uma variável para a 
execução do código. Cada case utilza o operador == para definir se ele será 
executado. Não há limite de case e ainda é permitido definir um default, que
é execytado caso nenhum case execute.
*/

void main(List<String> args) {
  var estacao = 'Outono';
  switch (estacao) {
    // um cláusula case vazia, funciona apensa passsando a execução para a
    case 'Outono':
    // próxima c cláusula.
    case 'Verão':
      print('Tá calor');
      break;
    case 'Inverto':
      print('Tá frio');
      break;
    default:
      print('Tá bom');
      break;
  }
}
