import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String str = await fetchUserData();
    Map<String, dynamic> object = jsonDecode(str);
    String username = object['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool response = await checkCredentials();
    if (response) {
      print('There is a user: $response');
      return await greetUser();
    } else {
      print('There is a user: $response');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
