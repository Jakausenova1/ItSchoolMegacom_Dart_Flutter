import 'package:dio/dio.dart';
import 'package:dogs/core_data/dio_settings.dart';
import '../models/cats_model.dart';

class GetCatsRepo {
  final Dio dioCat;
  GetCatsRepo({required this.dioCat});

  Future<CatsModel> getCatsData({required int count}) async {
    final response = await dioCat.get('meow');
    return CatsModel.fromJson(response.data);
  }
}
