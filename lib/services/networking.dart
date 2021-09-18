import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  Uri _uri;

  NetworkHelper(this._uri);

  Future getData() async {
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
