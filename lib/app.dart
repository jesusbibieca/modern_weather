import 'package:modern_weather/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:modern_weather/views/settings/settings.dart';

String neka = 'init';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App title',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class MyLeading extends StatefulWidget {
  const MyLeading({
    Key key,
  }) : super(key: key);

  @override
  _MyLeadingState createState() => _MyLeadingState();
}

class _MyLeadingState extends State<MyLeading> {
  String text = "initial";
  TextEditingController _c;
  @override
  initState() {
    _c = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.search),
        color: Colors.black,
        onPressed: () {
          showDialog<dynamic>(
              // builder: (BuildContext context) {
              //   return SimpleDialog(
              //     title: const Text('Select assignment'),
              //     children: <Widget>[
              //       SimpleDialogOption(
              //         onPressed: () {
              //           Navigator.pop(context);
              //         },
              //         child: const Text('Treasury department'),
              //       ),
              //       SimpleDialogOption(
              //         onPressed: () {
              //           Navigator.pop(context);
              //         },
              //         child: const Text('State department'),
              //       ),
              //     ],
              //   );
              // },
              child: new Dialog(
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(hintText: "Update Info"),
                      controller: _c,
                    ),
                    new FlatButton(
                      child: new Text("Save"),
                      onPressed: () {
                        setState(() {
                          this.text = _c.text;
                          neka = _c.text;
                        });
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              context: context);
        });
  }
}

class MyActions extends StatelessWidget {
  const MyActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
