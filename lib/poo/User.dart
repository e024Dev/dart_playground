class User {
  // Atributos
  int id = 0;
  String username = '';

  // Comportamentos
  @override
  String toString() {
    return 'User{id: $id, username: $username}';
  }
}