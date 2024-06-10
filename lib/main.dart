// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors, sort_child_properties_last, unnecessary_new

import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

_launchURLBrowser() async {
  var url = Uri.parse("https://www.linkedin.com/in/seif-heakal");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBrowsere() async {
  var url = Uri.parse("mailto:seiftamer06@gmail.coml");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBrowserr() async {
  var url = Uri.parse("https://github.com/seifheakal");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {},
        'ar': {
          'Seif Tamer Heakal': 'سيف تامر هيكل',
          'Hello from the other world': 'مرحبا من عالم اخر',
          'Projects': 'مشاريع',
          'Education': 'تعليم',
          'Experience': 'خبرة',
          'Skills': 'مهارات',
          'Creative': 'ابداع',
          'Hi': 'مرحبا',
          'MY links': 'روابطي',
          'SEIF TAMER HEAKAL': 'سيف تامر هيكل',
          'Website still under construction': 'الموقع تحت الانشاء',
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
      home: MyHomePage(title: 'Seif Tamer Heakal'.tr),
      title: 'Seif Tamer Heakal'.tr,
      locale: const Locale('en'),
      translations: messages(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SEIF TAMER HEAKAL".tr,
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
                              builder: (context) => const View1()),
                        );
                      },
                      child: Text("Projects".tr),
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
                              builder: (context) => const View2()),
                        );
                      },
                      child: Text("Education".tr),
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
                              builder: (context) => const View3()),
                        );
                      },
                      child: Text(
                        "Experience".tr,
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
                              builder: (context) =>  View4()),
                        );
                      },
                      child: Text("Skills".tr),
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      child: Text("Creative".tr),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const View5()),
                        );
                      },
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 5)
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hi'.tr,
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
                      "Hello from the other world".tr,
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
              TextButton(
                onPressed: _launchURLBrowser,
                child: Text("linkedin: www.linkedin.com/in/seif-heakal"),
              ),
              TextButton(
                onPressed: _launchURLBrowserr,
                child: Text("Github: seifheakal"),
              ),
              TextButton(
                onPressed: _launchURLBrowsere,
                child: Text("Gmail: seiftamer06@gmail.com"),
              ),
              Text(
                "Website still under construction".tr,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  launch(String s) {}
}

// ignore: must_be_immutable
class CustomToolTip extends StatelessWidget {
  String text;

  CustomToolTip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Tooltip(
          preferBelow: false, message: "click to copy", child: new Text(text)),
      onTap: () {
        Clipboard.setData(new ClipboardData(text: text));
      },
    );
  }
}
