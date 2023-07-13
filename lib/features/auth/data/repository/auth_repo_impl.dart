import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:metrdev/service/app_exception.dart';

class AuthRepository {
  final url = 'http://vbatest.metrdev.com:2472/api/v1/signin';

  Future<dynamic> getLogin(
      {required String email, required String password}) async {
    try {
      final response = await http
          .post(Uri.parse(url), body: {"email": email, "password": password});
      if (response.statusCode == 200) {
        final data = response.body;
        final decodedBody = json.decode(data);
        return decodedBody;
      }
    } catch (e) {
      throw Failure(message: 'Something went wrong');
    }
  }
}
