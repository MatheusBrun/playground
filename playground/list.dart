void main(List<String> args) {
  var names = ['Matheus', 'Bruno', 'Mariana', 'Rute'];
  names.add('Luisa');
  names.add('Guilherme');
  names.remove('Matheus');
  names.removeAt(4);
  print(names);
}
