class Password {
  String password;

  Password() : password = '';

  bool isValid() {
    bool isANumber = false;
    bool isInUppercase = false;
    bool isInLowercase = false;

    if (password.length >= 8 && password.length <= 16) {
      for (int i = 0; i < password.length; i++) {
        if (password.codeUnitAt(i) >= 48 && password.codeUnitAt(i) < 58) {
          isANumber = true;
        } else if (password.codeUnitAt(i) > 64 && password.codeUnitAt(i) < 91) {
          isInUppercase = true;
        } else if (password.codeUnitAt(i) > 96 &&
            password.codeUnitAt(i) < 123) {
          isInLowercase = true;
        }
      }
      if (isANumber && isInLowercase && isInUppercase) {
        return true;
      }
    }
    return false;
  }

  String toString() {
    return 'Your Password is: $password';
  }
}
