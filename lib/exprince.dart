import 'package:flutter/material.dart';

class View3 extends StatelessWidget {
  const View3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Formal experience",
                ),
                Tab(
                  text: "Extras experience",
                ),
              ],
            ),
            title: const Text('Exprience'),
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
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "TEDx Fundraising team member",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                            
                          ),
                        ),
                        Center(
                          child: Padding(
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
                                      "Helped in raising funds for the event, and helped in organizing the event and getting the sponsors for the event to be a great and successful event"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "Internship at Echem",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
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
                                    "Learned feasibility studies, tendering and contract types, process of establishingcompanies from the idea phase till the end of construction and start of operation"),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "Math / CS teaching assistant",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
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
                                    "Helped students in understanding the course material, and helped in solving their problems and questions and explaining the material in a simple way"),
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
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "RYLA secrets of success",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Center(
                          child: Padding(
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
                                      "RYLA in Ain el shokhna, learned the secrets of success, and how to be a successful person in life and in work, and how to be a leader in the community and in the work place"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "BRITISH council your world competition",
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
              ],
            ),
          ),
        ),
      );
    
  }
}
