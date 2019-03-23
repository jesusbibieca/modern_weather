import 'package:flutter/material.dart';
import 'package:modern_weather/views/home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App title',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'App bar',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  onPressed: () async {
                    final String settings = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ),
                    );
                    debugPrint(settings);
                  }),
            ),
          ],
        ),
        body: Home(),
      ),
    );
  }
}
