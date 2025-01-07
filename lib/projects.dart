import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seifweb/utils/project_utils.dart';
import 'package:seifweb/widgets/project_card.dart';

class View1 extends StatelessWidget {
  const View1({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // var elements = [
    //   "Communication and Presentation",
    //   "Marrketing",
    //   "Risk Management",
    //   "Technical Writing",
    //   "Manufacturing",
    //   "Socital Issues",
    // ];
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Harware projects",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Software projects",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Other projects",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            title: const Text('Projects'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Center(
                  child: Column(
                    children: [
                      if (MediaQuery.of(context).size.width > 650)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Projectcardwidget(
                                project: Harwareprojects.first,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Projectcardwidget(
                                project: Harwareprojects.elementAt(1),
                              ),
                            ),
                          ],
                        )
                      else
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Projectcardwidget(
                                project: Harwareprojects.first,
                                width: 0.8,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Projectcardwidget(
                                project: Harwareprojects.elementAt(1),
                                width: 0.8,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "NASA Space Apps Cairo 2024 Participant",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: const Text(
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    "Contributed to a community mapping system designed to showcase general statistics about local communities. Developed heatmaps to visually represent data, enhancing accessibility and understanding for users. This project aimed to facilitate community engagement and provide valuable insights through intuitive mapping techniques."),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "Softwaregeya 2024 - Second Place Winner",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: const Text(
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    "Participated in a national programming competition focused on low-level programming using assembly language. Collaborated on the development of a boot loader, showcasing a deep understanding of computer architecture and system-level programming. Achieved second place, demonstrating strong problem-solving skills and proficiency in assembly language."),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "RYLA secrets of success",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: const Text(
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    "RYLA in Ain el shokhna, learned the secrets of success, and how to be a successful person in life and in work, and how to be a leader in the community and in the work place"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "British council your world competition",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: const Text(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  "participated  in the competition and learned how to be a good speaker and how to present my ideas in a simple and clear way."),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          "MUN at AUC",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: const Text(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  "leaened how to be a good debater and how to present my ideas in a professional way, and how to be a good listener and how to understand the other person's point of view and how to respect it and how to respond to it in a professional way"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: Harwareprojects.first,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: Harwareprojects.elementAt(1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
