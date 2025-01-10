import 'package:flutter/material.dart';
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
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Harware projects",
                    style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width > 650 ? 20 : 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Software projects",
                    style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width > 650 ? 20 : 18),
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
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, bottom: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Projectcardwidget(
                                    project: hardwareprojects.first,
                                  ),
                                  Projectcardwidget(
                                    project: hardwareprojects.elementAt(1),
                                  ),
                                ],
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
                                project: hardwareprojects.first,
                                width: 0.8,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 30),
                              child: Projectcardwidget(
                                project: hardwareprojects.elementAt(1),
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
                      if(MediaQuery.of(context).size.width > 650)
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Projectcardwidget(
                                  project: softwareprojects.elementAt(0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Projectcardwidget(
                                  project: softwareprojects.elementAt(1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Projectcardwidget(
                                  project: softwareprojects.elementAt(2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Projectcardwidget(
                                  project: softwareprojects.elementAt(3),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Projectcardwidget(
                                  project: softwareprojects.elementAt(4),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                      else
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: softwareprojects.elementAt(0),
                              width: 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: softwareprojects.elementAt(1),
                              width: 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: softwareprojects.elementAt(2),
                              width: 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Projectcardwidget(
                              project: softwareprojects.elementAt(3),
                              width: 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30,bottom: 30),
                            child: Projectcardwidget(
                              project: softwareprojects.elementAt(4),
                              width: 0.8,
                            ),
                          ),
                        ],
                      )
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
