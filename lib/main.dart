// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:seifweb/projects.dart';
import 'package:seifweb/education.dart';
import 'package:seifweb/exprince.dart';
import 'package:seifweb/creative.dart';
import 'package:seifweb/skills.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyAppColors {
  static final darkBlue = Color.fromARGB(255, 245, 101, 101);
  static final lightBlue = Color.fromARGB(255, 68, 58, 45);
}

class messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello World',
        },
        'ar': {
          'hello': 'مرحبا بالعالم',
        },
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 17, 9, 40)),
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Seif Tamer Heakal'),
      title: 'Seif Tamer Heakal',
      locale: const Locale('en'),
      translations: messages(),
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
    return new AlertDialog(
      title: const Text('MY links'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
            Column(children: [
              InkWell(
              child:  Text("linkedin : www.linkedin.com/in/seif-heakal"),
            onTap: () {
              launch("www.linkedin.com/in/seif-heakal");
            },
              ),
            InkWell(
              child:  Text("Gmail :      seiftamer06@gmail.com"),
            onTap: () {
              launch("mailto:seiftamer06@gmail.com");
            },
              ),
            ],),
          
        ],
      ),
      actions: <Widget>[
        new FilledButton(
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SEIF TAMER HEAKAL",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              Get.updateLocale(Get.locale?.languageCode == 'en'
                  ? Locale('ar')
                  : Locale('en'));
            },
          ),
        ],
        leading: IconButton(
            icon: Icon(Icons.dark_mode),
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            }),
      ),
      //backgroundColor: Color.fromARGB(255, 255, 105, 105),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view1()),
                        );
                      },
                      child: Text("Projects"),
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view2()),
                        );
                      },
                      child: Text("Education"),
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
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
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view4()),
                        );
                      },
                      child: Text("Skills"),
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      child: Text("Creative"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const view5()),
                        );
                      },
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5)
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hi',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.bold),
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
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Text(""),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 10.0,
                      spreadRadius: 10.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
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
                
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  launch(String s) {}
}
