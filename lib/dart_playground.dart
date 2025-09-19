import 'package:dart_playground/poo/User.dart' hide Moderator;
import 'package:dart_playground/poo/user.dart' hide DefaultUser;

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

  final multiplier = (int x, int y) {
    return x * y;
  };

  final dobro = (int x) => multiplier(x, 2);

  print('dobro: tipo: ${dobro.runtimeType}');

  Botao botao = Botao(label: "Enviar", callBack: () {});

  String getFullname(String nome, String sobrenome, [String? titulo]) {
    if (titulo != null) {
      return "$titulo $nome $sobrenome";
    }
    return "$nome $sobrenome";
  }

  print(getFullname("Esdras", "Silva"));

  bool isValueInInterval({required int value, int min = 0, int max = 10}) {
    return value >= min && value <= max;
  }

  print(isValueInInterval(value: 10));
  print(isValueInInterval(max: 100, value: 50, min: 10));
  print(isValueInInterval(min: 20, max: 100, value: 60));
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

class FormularioCadastro {
  String nome;
  Botao botao;
  Function onSubmit;

  FormularioCadastro({
    required this.nome,
    required this.botao,
    required this.onSubmit,
  });
}

class Botao {
  String label;
  Function callBack;

  Botao({required this.label, required this.callBack});

  void onClick() {
    callBack();
  }
}

void poo() {
  final user = DefaultUser(id: 42, username: 'esdras', password: '123edc');
  print(user);
  final anonimo = DefaultUser.anonimo();
  print(anonimo);
  final moderator = Moderator(id: 43, username: 'moderator', password: '123edc');
}
