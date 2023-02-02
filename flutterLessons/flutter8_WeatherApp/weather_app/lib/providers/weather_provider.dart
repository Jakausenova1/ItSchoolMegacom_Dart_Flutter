import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? model;

  Future<void> getWeather(
      {required String apiKey,
      required String lat,
      required String lon}) async {
    Dio dio = Dio();
    final getWeather = await dio.get(
      "https://api.openweathermap.org/data/2.5/weather?lat=42.882004&lon=74.582748&appid=ecd90844dbbf9ac0ad94178ad6f8631f&units=metric",
      queryParameters: {
        "lat": lat,
        "lon": lon,
        "appId": apiKey,
      },
    );
    model = WeatherModel.fromJson(getWeather.data);
    notifyListeners();
  }
}
