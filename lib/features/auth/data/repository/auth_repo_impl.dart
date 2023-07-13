import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:metrdev/service/app_exception.dart';

class AuthRepository {
  final url = 'http://vbatest.metrdev.com:2472/api/v1/signin';

  Future<dynamic> getLogin({
    required String email,
    required String password,
  }) async {
    try {
      var map = jsonEncode({"email": email, "password": password});
      final response = await http.post(Uri.parse(url), body: map, headers: {
        "Content-type": "application/json",
      });
      final data = response.body;
      final decodedBody = json.decode(data);
      print(decodedBody);
      if (response.statusCode == 200) {
        return decodedBody;
      } else {
        throw Failure(message: decodedBody['message']);
      }
    } on Failure catch(e){
      print(e.message);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
