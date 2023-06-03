import 'dart:convert';

import 'package:customer_app/helpers/api_base_helper.dart';
import 'package:http/http.dart' show Client, Response;
import 'package:meta/meta.dart';

class UserApiProvider {
  Client client = Client();
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<Map> authenticate(
      {@required String phone, @required String password}) async {
    String url = 'login.php';
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded"
    };
    Map<String, dynamic> body = {
      "username": phone,
      "password": password,
      "type": "customer"
    };
    final encoding = Encoding.getByName('utf-8');
    final response = await _helper.post(
        url: url, headers: headers, body: body, encoding: encoding);
    print(response);
    return response;
  }

  Future<bool> verify(
      {@required String optCode, @required String token}) async {
    String url = '2step_auth.php';
    Map<String, String> body = {"code": optCode, "token": token};
    final response = await _helper.post(url: url, body: body);

    print(response);
    return response['authStatus'];
  }
}
