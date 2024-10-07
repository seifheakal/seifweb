import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud.dart'; // Import the word_cloud packag

class View4 extends StatelessWidget {
  const View4({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List<Map> wordlist =[
    {'word': 'C++', 'value': 100},
    {'word': 'C#', 'value': 40},
    {'word': 'VHDL', 'value': 80},
    {'word': 'Flutter', 'value': 70},
    {'word': 'Assemblx86', 'value': 50},
    {'word': 'Arm Assembly', 'value': 55},
    {'word': 'MySQL', 'value': 35},
    {'word': 'Matlab', 'value': 37},
    {'word': 'Data Base', 'value': 47},
    {'word': 'Visual Studio', 'value': 26},
    {'word': 'Visual Studio code', 'value': 20},
    {'word': 'Logisim', 'value': 35},
    {'word': 'Multisim', 'value': 34},
    {'word': 'Quartus', 'value': 40},
    {'word': 'Microsoft SQL server','value': 30},
    {'word': 'Github','value': 30},
    {'word': 'Winform','value': 34},
  ];
  
    WordCloudData wcdata = WordCloudData(data: wordlist);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "SKILLS",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          child: Column(
            children: [
              const Text(
                "My Skills",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              //spacer
              const SizedBox(height: 20),

              const Text("Everytime the shape of the Word cloud changes", style: TextStyle(fontSize: 20),),
              WordCloudView(
                  data: wcdata,
                  mapwidth: MediaQuery.of(context).size.width>1000? MediaQuery.of(context).size.width*.7: MediaQuery.of(context).size.width,
                  mapheight: MediaQuery.of(context).size.height>700?300 :MediaQuery.of(context).size.height,
                  fontWeight: FontWeight.bold,
                  colorlist: const [Color.fromARGB(255, 0, 255, 34), Colors.redAccent, Colors.indigoAccent],
                ),
  
            ],
          ),
        ),
      ),
    );
  }
}
