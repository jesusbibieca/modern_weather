import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:modern_weather/app.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(App());
}
