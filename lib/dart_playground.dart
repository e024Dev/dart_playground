/// Comentário de documentação.
/// A função serve simplistem para demosntrar como funciona o comentário de documentação.
void tiposDeDados() {
  //TODO: Comentarios

  // Comentario de uma linha

  /*
    Comentario de multiplas linhas
    Utilizamos /* */ para comentarios de multiplas linhas
  */

  //TODO: Tipos de dados

  // Números inteiros
  int numeroInteiro = 1;

  // Números reais
  double numeroReal = 1.0;

  num a = 1;
  num b = 2.0;

  String texto = "😍";

  bool booleano = true;

  var c = 10;
  var d = 10.0;
  var e = "😍";
  var f = true;

  print('a: $a - tipo: ${a.runtimeType}');
  print('b: $b - tipo: ${b.runtimeType}');
  print('c: $c - tipo: ${c.runtimeType}');
  print('d: $d - tipo: ${d.runtimeType}');
  print('e: $e - tipo: ${e.runtimeType}');
  print('f: $f - tipo: ${f.runtimeType}');

  dynamic x = 1;
  print('\nx: $x - tipo: ${x.runtimeType}');
  x = "😍";
  print('x: $x - tipo: ${x.runtimeType}');
  x = true;
  print('x: $x - tipo: ${x.runtimeType}');
  x = [1, 2, 3];
  print('x: $x - tipo: ${x.runtimeType}');
  x = {1, 2, 3};
  print('x: $x - tipo: ${x.runtimeType}');
  x = {"a": 1, "b": 2, "c": 3};
  print('x: $x - tipo: ${x.runtimeType}');
  x = (1, 2, 3);
  print('x: $x - tipo: ${x.runtimeType}');
  x = (int x) => x * 2;
  print('x: $x - tipo: ${x.runtimeType}');

  //TODO: Variáveis
  String nome = "Esdras";
  var y = 2025;

  //TODO: Constantes
  const int constYear = 2025;
  final data = DateTime.now();

  //TODO: Funcoes
  print(media(10, 0, 10, 0, algoritmo: mediaAritmetica));
  print(media(10, 0, 10, 0, algoritmo: mediaPonderada));
}

double mediaAritmetica(int a, int b, int c, int d) {
  return (a + b + c + d) / 4;
}

double mediaPonderada(int a, int b, int c, int d) {
  return (a * 1 + b * 3 + c * 2 + d * 4) / 10;
}

double media(int a, int b, int c, int d, {required Function algoritmo}) {
  return algoritmo(a, b, c, d);
}
