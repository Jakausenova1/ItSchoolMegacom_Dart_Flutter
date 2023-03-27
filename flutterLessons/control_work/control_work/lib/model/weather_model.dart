class WeatherModel {
  String? cityName;
  double? temp;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  double? wind;

  WeatherModel(
      {this.cityName,
      this.temp,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.wind});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    tempMin = json["main"]["temp_min"];
    tempMax = json["main"]["temp_max"];
  }
}
