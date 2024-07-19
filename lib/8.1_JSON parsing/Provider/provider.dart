import 'dart:convert';

import 'package:adv_ch_json_parsing/8.1_JSON%20parsing/Modal/photo_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class JSONProvider extends ChangeNotifier {
  List<PhotoModal> photolist = [];

  Future<List> jsonparsing() async {
    String json = await rootBundle.loadString('asstes/JSON/photo.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromlist() async {
    List Photo = await jsonparsing();
    photolist = Photo.map((e) => PhotoModal.fromMap(e)).toList();
    notifyListeners();
  }

  JSONProvider() {
    fromlist();
  }
}
