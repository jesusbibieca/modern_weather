import 'package:meta/meta.dart';
import 'package:modern_weather/model/weater_model.dart';
import 'package:modern_weather/utils/api_data_provider.dart';

class WeatherRepository {
  WeatherRepository({@required this.dataApiClient})
      : assert(dataApiClient != null);
  final DataApiClient dataApiClient;

  Future<Weather> getWeather(String city) async =>
      dataApiClient.fetchWeather(city);
}
