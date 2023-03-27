import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'model.dart';

class CatsModel extends ChangeNotifier {
  String image = "https://purr.objects-us-east-1.dream.io/i/bI8D6.jpg";

  Future<void> getCatsPhoto() async {
    Dio dio = Dio();
    final response = await dio.get("https://aws.random.cat/meow");
    final result = Model.fromJson(response.data);
    image = result.file ?? "";
    notifyListeners();
  }
}
