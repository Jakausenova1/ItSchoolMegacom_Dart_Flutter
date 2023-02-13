import 'package:dio/dio.dart';

import 'model.dart';

class CatsRepo {
  final Dio dio;
  CatsRepo({required this.dio});

  Future<String> getCatsUrl() async {
    final response = await dio.get('meow');
    final image = CatsModel.fromJson(response.data).file;
    return image ?? '';
  }
}
