import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    var url = Uri.parse('https://rickandmortyapi.com/api/character');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      String StrOfAll = response.body;
      Map<String, dynamic> object = jsonDecode(StrOfAll);
      List<dynamic> listOfCaracteres = object["results"];
      for (Map<String, dynamic> caractere in listOfCaracteres) {
        print(caractere["name"]);
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
