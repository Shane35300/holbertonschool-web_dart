import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    double total = 0.0;

    String userData = await fetchUserData();
    Map<String, dynamic> object = jsonDecode(userData);
    String orders = await fetchUserOrders(object['id']);
    List<dynamic> listOfProducts = jsonDecode(orders);
    for (String product in listOfProducts) {
      String priceStr = await fetchProductPrice(product);
      double price = jsonDecode(priceStr) + 0.0;
      total += price;
    }
    return total;
  } catch (error) {
    return -1;
  }
}
