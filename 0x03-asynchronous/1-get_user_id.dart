import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String str = await fetchUserData();
  Map<String, dynamic> object = jsonDecode(str);
  return object['id'];
}
