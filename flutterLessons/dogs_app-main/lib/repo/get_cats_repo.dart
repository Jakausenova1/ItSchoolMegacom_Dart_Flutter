import 'package:dio/dio.dart';
import '../models/cats_model.dart';

class GetCatsRepo {
  final Dio dioCat;
  GetCatsRepo({required this.dioCat});

  Future<CatsModel> getCatsData() async {
    final response = await dioCat.get('meow');
    return CatsModel.fromJson(response.data);
  }
}
