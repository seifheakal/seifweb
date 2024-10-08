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
                            "SI-Vison",
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
                                      "Analog Layout Design Intern: Gained hands-on experience in analog layout design, focusing on key concepts such as short channel effects, the semiconductor manufacturing process, and matching techniques for high-performance analog circuits. Proficient in using Synopsys tools for layout design, successfully completing a project that met both Design Rule Check (DRC) and Layout Versus Schematic (LVS) standards."),
                                ),
                              ),
                            ),
                          ),
                        ),
                         const Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text(
                            "Huawei ",
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
                                      "Virtualization and Infrastructure Management Intern: Installed and managed VMs, VRMs, and data stores. Used MobaXterm for monitoring, health checks, and live migrations. Monitored KPIs and gained experience in disaster recovery processes."),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                            "Echem",
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
                            "NASA Space Apps Cairo 2024 Participant",
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
              ],
            ),
          ),
        ),
      );
    
  }
}
