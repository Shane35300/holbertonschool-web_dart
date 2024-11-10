class Password {
  String _password;

  Password({required String password}) : _password = password;

  String get password {
    return _password;
  }

  set password(String newPwd) {
    _password = newPwd;
  }

  bool isValid() {
    bool isANumber = false;
    bool isInUppercase = false;
    bool isInLowercase = false;

    if (_password.length >= 8 && _password.length <= 16) {
      for (int i = 0; i < _password.length; i++) {
        if (_password.codeUnitAt(i) >= 48 && _password.codeUnitAt(i) < 58) {
          isANumber = true;
        } else if (_password.codeUnitAt(i) > 64 &&
            _password.codeUnitAt(i) < 91) {
          isInUppercase = true;
        } else if (_password.codeUnitAt(i) > 96 &&
            _password.codeUnitAt(i) < 123) {
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
    return 'Your Password is: $_password';
  }
}
