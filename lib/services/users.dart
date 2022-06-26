import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersServices with ChangeNotifier {
  Future<http.StreamedResponse> connectAPI(data) async {
    Uri url = Uri.parse("https://api-kel3.analistek.com/login");
    // request login menggunakan multipartrequest dengan method post
    var request = http.MultipartRequest('POST', url);
    request.fields.addAll({
      'username': data['username'],
      'password': data['password'],
    });

    // hasil response ditampung ke dalam variabel response dalam bentuk byte
    http.StreamedResponse response = await request.send();

    return response;
  }
}
