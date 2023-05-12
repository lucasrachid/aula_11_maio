main() async {
  print('Abre página');
  buscarDados();
}

Future buscarDados() async {
  await Future.delayed(Duration(seconds: 5),  () => print('Carrega os dados'));
}