import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? model;

  Future<void> getWeather({
    required String apiKey,
    required String location,
  }) async {
    Dio dio = Dio();
    final getWeather = await dio.get(
      "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=e4fef53114583ed8a1e88b2cdee2eb2d&units=metric",
      queryParameters: {
        "appId": apiKey,
      },
    );
    model = WeatherModel.fromJson(getWeather.data);
    notifyListeners();
  }
}
