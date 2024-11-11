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
import 'package:animated_text_kit/animated_text_kit.dart';

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
          'I’m a computer engineering student with a passion for both technology and creativity. My journey blends technical expertise with a creative mindset, inspired by the themes of perseverance and adventure in *One Piece*, which have also shaped my artistic pursuits.':
              'أنا طالب هندسة كمبيوتر بشغف للتكنولوجيا والإبداع. تمزج رحلتي بين الخبرة التقنية والعقلية الإبداعية، مستوحاة من مواضيع الصمود والمغامرة في *ون بيس*، التي شكلت أيضًا مساعيي الفنية.',
          'Technically, I’ve built valuable hands-on experience through internships at Huawei and Si-Vision. At Huawei, I worked on virtualization, server configuration, and network management, managing VMs, VRMs, and data stores while performing live migrations and disaster recovery. At Si-Vision, I focused on analog layout design, mastering short channel effects, matching techniques, and utilizing Synopsys tools to create layouts that passed DRC and LVS.':
              'من الناحية التقنية، اكتسبت خبرة عملية قيمة من خلال التدريب الصيفي في هواوي وسي-فيجن. في هواوي، عملت على التجازؤ، تكوين الخادم، وإدارة الشبكة، إدارة الآلات الظاهرية، ومخازن البيانات أثناء أداء الترحيل المباشر واستعادة الكوارث. في سي-فيجن، ركزت على تصميم التخطيط الأنالوجي، واستيعاب تأثيرات القناة القصيرة، وتقنيات المطابقة، واستخدام أدوات سينوبسي لإنشاء تخطيطات تجاوزت DRC و LVS.',
          'During my summer internship at ECHEM, I gained insight into feasibility studies, tendering, contract types, and the process of establishing a company from concept to operation. I also developed strong work ethics, marketing skills, and an understanding of working in a professional environment.':
              'خلال التدريب الصيفي في إيكيم، اكتسبت رؤى حول دراسات الجدوى، العطاءات، أنواع العقود، وعملية إنشاء شركة من المفهوم إلى التشغيل. كما وضعت أخلاقيات العمل القوية، ومهارات التسويق، وفهم العمل في بيئة مهنية.',
          'By merging my creative and technical skills, I approach challenges with unique perspectives. I am particularly intrigued by hardware innovation and emerging technologies like quantum computing, and I aim to contribute meaningfully by integrating creativity with technical expertise.': 
              'من خلال دمج مهاراتي الإبداعية والتقنية، أقترب من التحديات بآفاق فريدة. أنا مهتم بشكل خاص بالابتكار في مجال الأجهزة والتقنيات الناشئة مثل الحوسبة الكمية، وأهدف إلى المساهمة بشكل معنوي من خلال دمج الإبداع مع الخبرة التقنية.',
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
                        vertical: 10),
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
                        vertical: 10),
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
                        vertical: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => View4()),
                        );
                      },
                      child: Text("Skills".tr),
                    ).paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: 10),
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
                        vertical: 10)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Computer engineering student',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                          ),
                          speed: Duration(milliseconds: 100),
                          curve: Curves.easeIn),
                    ],
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: AnimatedEmoji(
                      AnimatedEmojis.wave,
                      size: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
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
                height: 70,
              ),

              const Text(
                "About Me",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      const Text(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                        "I’m a computer engineering student with a passion for both technology and creativity. My journey blends technical expertise with a creative mindset, inspired by the themes of perseverance and adventure in *One Piece*, which have also shaped my artistic pursuits.",
                      ),
                      SizedBox(height: 15,),
                      Text(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                          "Technically, I’ve built valuable hands-on experience through internships at Huawei and Si-Vision. At Huawei, I worked on virtualization, server configuration, and network management, managing VMs, VRMs, and data stores while performing live migrations and disaster recovery. At Si-Vision, I focused on analog layout design, mastering short channel effects, matching techniques, and utilizing Synopsys tools to create layouts that passed DRC and LVS."),
                      SizedBox(height: 15,),
                      Text(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                          "During my summer internship at ECHEM, I gained insight into feasibility studies, tendering, contract types, and the process of establishing a company from concept to operation. I also developed strong work ethics, marketing skills, and an understanding of working in a professional environment."),
                      SizedBox(height: 15,),
                      Text(
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                          "By merging my creative and technical skills, I approach challenges with unique perspectives. I am particularly intrigued by hardware innovation and emerging technologies like quantum computing, and I aim to contribute meaningfully by integrating creativity with technical expertise.")
                    ],
                  ),
                ),
              ),
                            TextButton(
                onPressed: _launchURLBrowser,
                child: Text(
                  "linkedin: Seif Heakal",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: _launchURLBrowserr,
                child: Text(
                  "Github: seifheakal",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: _launchURLBrowsere,
                child: Text(
                  "Gmail: seiftamer06@gmail.com",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
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
