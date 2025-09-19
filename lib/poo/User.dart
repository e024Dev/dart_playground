class User {
  // Atributos
  int? _id;
  String? _username;
  String? _password;

  // Comportamentos
  // Constructor
  User({int? id, String? username, String? password}) 
  : _id = id, _username = username, _password = password;

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

  String? get username {
    return _username;
  }
  
  set username(String? username) {
    if (username == null || username.isEmpty) {
      throw ArgumentError('Username precisa ser informado');
    }
    _username = username;
  }

  String? get password {
    return _password;
  }
  
  set password(String? password) {
    if (password == null || password.isEmpty) {
      throw ArgumentError('Password precisa ser informado');
    }
    _password = password;
  }
  
  @override
  String toString() {
    return 'User{id: $_id, username: $_username}';
  }
}
