String longestUniqueSubstring(String str) {
  List<String> caracteres = [];
  String longestWord = '';
  for (int i = 0; i < str.length; i++) {
    if (!caracteres.contains(str[i])) {
      caracteres.add(str[i]);
    } else {
      String stringOfCaracteres = caracteres.join();
      if (stringOfCaracteres.length > longestWord.length) {
        longestWord = stringOfCaracteres;
      }
      caracteres.clear();
      caracteres.add(str[i]);
    }
  }
  if (caracteres != []) {
    String stringOfCaracteres = caracteres.join();
    if (stringOfCaracteres.length > longestWord.length) {
      longestWord = stringOfCaracteres;
    }
    caracteres.clear();
  }

  return (longestWord);
}
