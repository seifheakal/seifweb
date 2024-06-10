import 'package:flutter/material.dart';


class View1 extends StatelessWidget {
  const View1({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "PROJECTS",
          style: TextStyle(fontSize: 30),
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Column(
            children: [
              
                    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                "Microprocessor",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Data Base",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Data Structures",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Logic",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Programming techinces",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Lab",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Numerical",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Risk",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Computer Arch.",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Manufracturing",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "History",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Technical",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          // ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}