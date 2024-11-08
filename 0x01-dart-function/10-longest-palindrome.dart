import '9-palindrome.dart';

String longestPalindrome(String s) {
  int longueur = s.length;
  String longestPalindrome = '';
  for (int i = 3; i <= longueur; i++) {
    for (int j = 0; (j + i) <= longueur; j++) {
      if (isPalindrome(s.substring(j, j + i))) {
        if (longestPalindrome.length < s.substring(j, j + i).length) {
          longestPalindrome = s.substring(j, j + i);
        }
      }
    }
  }
  if (longestPalindrome == '') {
    return ('none');
  } else {
    return (longestPalindrome);
  }
}
