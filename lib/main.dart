// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:seifweb/view1.dart';
import 'package:seifweb/view2.dart';
import 'package:seifweb/view3.dart';
import 'package:seifweb/view5.dart';

void main() {
  runApp(const MyApp());
}

class MyAppColors {
  static final darkBlue = Color.fromARGB(255, 245, 101, 101);
  static final lightBlue = Color.fromARGB(255, 68, 58, 45);
}

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: MyAppColors.lightBlue,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: MyAppColors.darkBlue,
    brightness: Brightness.dark,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        barBackgroundColor: Color.fromARGB(255, 255, 40, 30),
      ),
      home: const MyHomePage(title: 'Seif Tamer Heakal'),
      title: 'Seif Tamer Heakal',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new CupertinoAlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[
        new CupertinoButton.filled(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "SEIF TAMER HEAKAL",
          style: TextStyle(fontSize: 30),
        ),
        trailing: CupertinoButton(
            child: IconButton(
                icon: Icon(Icons.language), onPressed: _incrementCounter),
            onPressed: _incrementCounter),
        leading: CupertinoButton(
            child: IconButton(
                icon: Icon(Icons.dark_mode), onPressed: _incrementCounter),
            onPressed: _incrementCounter),
      ),
      //backgroundColor: Color.fromARGB(255, 255, 105, 105),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoButton(
                      color: const CupertinoDynamicColor.withBrightness(
                        color: CupertinoColors.systemRed,
                        darkColor: CupertinoColors.activeBlue,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view1()),
                        );
                      },
                      child: Text("Projects"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoButton(
                      color: const CupertinoDynamicColor.withBrightness(
                        color: CupertinoColors.systemRed,
                        darkColor: CupertinoColors.activeBlue,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view2()),
                        );
                      },
                      child: Text("Education"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoButton(
                      color: const CupertinoDynamicColor.withBrightness(
                        color: CupertinoColors.systemRed,
                        darkColor: CupertinoColors.activeBlue,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view3()),
                        );
                      },
                      child: Text(
                        "Experince",
                        //style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoButton(
                      color: const CupertinoDynamicColor.withBrightness(
                        color: CupertinoColors.systemRed,
                        darkColor: CupertinoColors.activeBlue,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view4()),
                        );
                      },
                      child: Text("Skills"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CupertinoButton(
                      color: const CupertinoDynamicColor.withBrightness(
                        color: CupertinoColors.systemRed,
                        darkColor: CupertinoColors.activeBlue,
                      ),
                      child: Text("Creative"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view5()),
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Hi',
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                    ),
                  ),
                  AnimatedEmoji(
                    AnimatedEmojis.wave,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Hello from the other world",
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Text(""),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 0, 0), width: 4),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/table.jpeg'),
                  ),
                ),
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context),
                        );
                      },
                      child: Icon(Icons.link),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FloatingActionButton(
                      onPressed: _incrementCounter,
                      child: Icon(Icons.web_asset),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FloatingActionButton(
                      onPressed: _incrementCounter,
                      child: Icon(Icons.mail),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
