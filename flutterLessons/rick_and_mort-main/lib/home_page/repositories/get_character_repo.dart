import 'package:dio/dio.dart';
import 'package:rick_and_morty/home_page/models/character_model.dart';

class GetCharacterRepo {
  CharacterModel characterM = CharacterModel();

  final Dio dio;
  GetCharacterRepo({required this.dio});

  Future<CharacterModel> getCharacterData({required String name}) async {
    final response = await dio.get('character/?name=$name');
    characterM.results = [];
    characterM.fromJson(response.data);
    return characterM;
  }

  Future<CharacterModel> nextPage({required String path}) async {
    final response = await dio.get(path);
    characterM.fromJson(response.data);
    return characterM;
  }
}
