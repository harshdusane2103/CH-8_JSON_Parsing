import 'dart:convert';

import 'package:adv_ch_json_parsing/User_JSON/Modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Userprovider extends ChangeNotifier {
  List<UserModal> Userlist = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('asstes/JSON/user.json');
    List photo = jsonDecode(json);
    Userlist = photo.map((e) => UserModal.fromMap(e)).toList();
    notifyListeners();
  }

  Userprovider() {
    jsonParsing();
  }
}
