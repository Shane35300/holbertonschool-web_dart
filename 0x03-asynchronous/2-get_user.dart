import '2-util.dart';

Future<void> getUser() async {
  try {
    String str = await fetchUser();
    print(str);
  } catch (error) {
    print(error);
  }
}