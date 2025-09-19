class User {
  // Atributos
  int? _id;
  String? _username;

  // Comportamentos
  // Constructor
  User({int? id, String? username}) 
  : _id = id, _username = username;

  // Construtor nomeado
  User.anonimo() {
    _id = 0;
    _username = 'anonimo';
  }

  // Getters e Setters
  int? get id {
    return _id;
  }
  
  set id(int? id) {
    if (id == null || id < 0) {
      throw ArgumentError('Id precisa ser um número positivo');
    }
    _id = id;
  }

  @override
  String toString() {
    return 'User{id: $_id, username: $_username}';
  }
}
