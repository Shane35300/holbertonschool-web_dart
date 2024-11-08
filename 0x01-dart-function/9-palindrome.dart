bool isPalindrome(String s) {
  if (s.length < 3) {
    return (false);
  }
  int lastCaracter = s.length - 1;
  for (int i = 0; i < s.length; i++) {
    if (s[i] != s[lastCaracter - i]) {
      return (false);
    }
  }
  return (true);
}
