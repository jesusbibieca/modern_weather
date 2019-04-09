import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:modern_weather/model/weater_model.dart';

class DataApiClient {
  DataApiClient({@required this.httpClient}) : assert(httpClient != null);
  static const String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=';
  final http.Client httpClient;

  Future<Weather> fetchWeather(String city) async {
    final String apiKey = DotEnv().env['WEATHER_KEY'];
    final String url = '$apiUrl$city&appid=$apiKey&units=metric';
    final http.Response weatherResponse = await this.httpClient.get(url);

    if (weatherResponse.statusCode != 200) {
      print(Exception('error getting weather data'));
    }

    return parseWeather(weatherResponse.body);
  }
}
