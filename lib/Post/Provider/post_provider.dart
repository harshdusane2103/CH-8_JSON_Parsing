import 'dart:convert';

import 'package:adv_ch_json_parsing/Post/Modal/post_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;

  Future<void> initModal()
  async {
    String json = await rootBundle.loadString('asstes/JSON/post.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    initModal();
  }
}


