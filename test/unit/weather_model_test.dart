import 'package:flutter_test/flutter_test.dart';
import 'package:modern_weather/model/weater_model.dart';

void main() {
  test('parseWeather returns a Weather object', () {
    const String data =
        '''{"coord":{"lon":-69.94,"lat":18.48},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],
        "base":"stations","main":{"temp":25.3,"pressure":1018,"humidity":94,"temp_min":22,"temp_max":27.22},"visibility":10000,
        "wind":{"speed":0.71,"deg":143},"clouds":{"all":20},"dt":1553350156,"sys":{"type":1,"id":7052,"message":0.005,"country":"DO",
        "sunrise":1553337691,"sunset":1553381470},"id":3492908,"name":"Santo Domingo","cod":200}''';

    final Weather parsedData = parseWeather(data);

    expect(parsedData.cityId, 3492908);
    expect(parsedData.description, 'few clouds');
    expect(parsedData.humidity, 94);
    expect(parsedData.iconId, '02d');
    expect(parsedData.iconUrl, 'http://openweathermap.org/img/w/02d.png');
    expect(parsedData.main, 'Clouds');
    expect(parsedData.maxTemp, 27.22);
    expect(parsedData.minTemp, 22.0);
    expect(parsedData.name, 'Santo Domingo');
    expect(parsedData.pressure, 1018);
    expect(parsedData.temperature, 25.3);
    expect(parsedData.windDeg, 143);
    expect(parsedData.windSpeed, 0.71);
  });
}
