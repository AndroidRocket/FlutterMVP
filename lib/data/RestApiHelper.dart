import 'dart:async';
import 'dart:convert';

import 'package:fulltoken/mvp/models/requests/SignupRequest.dart';
import 'package:fulltoken/mvp/models/responses/LoginResponse.dart';
import 'package:http/http.dart' as http;

class RestWebCaller {
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<LoginResponse> login(SignInRequest request) async {
    print(json.encode(request));
    final response =
    await http.post("http://www.mocky.io/v2/5c540a2a3200005400f7f46a",
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(request));
    return new LoginResponse.fromJson(json.decode(response.body));

  }
}
