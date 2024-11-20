import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:singel_api/SingleUser/single_user_model.dart';

class UserProvider extends ChangeNotifier {
  UserProvider() {
    getData(1);
  }
  SingleUserModel userData = SingleUserModel();

  getData(int id) async {
    var res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

    var maxData = jsonDecode(res.body.toString());

    if (res.statusCode == 200) {
      userData = SingleUserModel.fromJson(maxData);
      notifyListeners();
    }
  }
}
