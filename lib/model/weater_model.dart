import 'dart:convert';

class Weather {
  Weather(
      {this.cityId,
      this.description,
      this.humidity,
      this.iconId,
      this.main,
      this.maxTemp,
      this.minTemp,
      this.name,
      this.pressure,
      this.temperature,
      this.windDeg,
      this.windSpeed})
      : iconUrl = 'http://openweathermap.org/img/w/$iconId.png';

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityId: json['id'],
        description: json['weather'][0]['description'],
        humidity: json['main']['humidity'],
        iconId: json['weather'][0]['icon'],
        main: json['weather'][0]['main'],
        maxTemp: json['main']['temp_max'].toDouble(),
        minTemp: json['main']['temp_min'].toDouble(),
        name: json['name'],
        pressure: json['main']['pressure'],
        temperature: json['main']['temp'].toDouble(),
        windDeg: json['wind']['deg'],
        windSpeed: json['wind']['speed'].toDouble());
  }

  final int cityId;
  final String description;
  final int humidity;
  final String iconId;
  final String iconUrl;
  final String main;
  final double maxTemp;
  final double minTemp;
  final String name;
  final int pressure;
  final double temperature;
  final int windDeg;
  final double windSpeed;
}

Weather parseWeather(String jsonStr) {
  final Map<String, dynamic> decodedJson = jsonDecode(jsonStr);
  return Weather.fromJson(decodedJson);
}
