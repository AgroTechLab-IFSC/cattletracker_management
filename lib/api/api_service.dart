//import 'package:flutter_http_post_request/model/user_model.dart';
//import 'package:flutter_http_post_request/shared_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "https://agrotechlab.lages.ifsc.edu.br:8080/api/auth/login";

    final response = await http.post(url, body: jsonEncode(requestModel));
    return LoginResponseModel.fromJson(
      json.decode(response.body),
    );
  }

  // Future<DataModel> getUsers() async {
  //   String url = "https://reqres.in/api/users?page=2";

  //   final response = await http.get(url);
  //   if (response.statusCode == 200 || response.statusCode == 400) {
  //     return DataModel.fromJson(
  //       json.decode(response.body),
  //     );
  //   } else {
  //     throw Exception('Failed to load data!');
  //   }
  // }
}
