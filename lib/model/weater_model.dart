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
      this.windSpeed});

  final int cityId;
  final String description;
  final int humidity;
  final String iconId;
  final String main;
  final double maxTemp;
  final double minTemp;
  final String name;
  final int pressure;
  final double temperature;
  final int windDeg;
  final double windSpeed;

  static Weather fromJson(dynamic json) {
    return Weather(
        cityId: json['id'],
        description: json['weather']['description'],
        humidity: json['main']['humidity'],
        iconId: json['weather']['icon'],
        main: json['weather']['main'],
        maxTemp: json['main']['temp_max'],
        minTemp: json['main']['temp_min'],
        name: json['name'],
        pressure: json['main']['pressure'],
        temperature: json['main']['temp'],
        windDeg: json['wind']['deg'],
        windSpeed: json['wind']['speed']);
  }
}
