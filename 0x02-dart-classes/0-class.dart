class User {
  String name;

  User() : name = '';
  User.withName(this.name);

  String showName() {
    return ('Hello $name');
  }
}
