import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task/api_config/model.dart';

class API_Manager {
  static Future<Transaction> getDetails() async {
    var client = http.Client();
    var transactions;

    var response = await client
        .get(Uri.https("api.skidfintech.com", "accounts/test-data/"));
    print('response' + response.body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = jsonDecode(jsonString);
      transactions = Transaction.fromJson(jsonMap);
      print('ok here it is');
    }

    return transactions;
  }
}
