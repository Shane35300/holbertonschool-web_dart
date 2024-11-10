import '0-util.dart';

Future<void> usersCount() async {
  // Appel asynchrone à fetchUsersCount et attente du résultat
  int count = await fetchUsersCount();

  // Affichage du nombre d'utilisateurs
  print(count);
}
