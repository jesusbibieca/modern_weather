import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[gradientFirst, gradientSecond])),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                'Santo Domingo',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Container(
                  width: double.infinity,
                  // color: Colors.white54,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        'http://openweathermap.org/img/w/02d.png',
                        fit: BoxFit.cover,
                        width: 100,
                      ),
                      Text(
                        '26˚C',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                const WeatherCard(selected: true),
                const WeatherCard(),
                const WeatherCard(),
                const WeatherCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Color gradientFirst = const Color(0xFF8BC6EF);
Color gradientSecond = const Color(0xFFE77AE6);

class WeatherCard extends StatelessWidget {
  const WeatherCard({this.weekDay, this.icon, this.selected = false});

  final String weekDay;
  final Icon icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        color: selected ? Colors.white54 : Colors.white24,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Text(
                weekDay ?? 'Mon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.network(
                  'http://openweathermap.org/img/w/02d.png',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
