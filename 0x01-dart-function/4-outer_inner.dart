void outer(String name, String id) {
  String inner() {
    List<String> tableau = name.split(' ');
    String firstname = tableau[0];
    String lastname = tableau[1];

    String sentence =
        'Hello Agent ${lastname.substring(0, 1)}.$firstname your id is $id';
    return sentence;
  }

  print(inner());
}
