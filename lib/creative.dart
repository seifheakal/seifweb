import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:readmore/readmore.dart';
//import 'package:overlapped_carousel/overlapped_carousel.dart';

class View5 extends StatelessWidget {
  const View5({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Creative",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: [
              CarouselSlider(
                items: const [
                  Text(
                    "Hi",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "This is my experimenting page",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Have Fun!",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
                options: CarouselOptions(
                  height: 20,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                ),
              ),
              //divider
              const Divider(
                color: Color.fromARGB(255, 38, 0, 255),
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              //spacer
              const SizedBox(
                height: 20,
              ),
              //progress bar
              const SizedBox(
                /// set the [width] and [height] of the displayable area
                height: 150,
                width: 150,
                child: AnimatedProgressBar(
                  /// set [stroke]
                  stroke: 20,

                  /// set the [foreground color] of the progress bar
                  color: Colors.purple,

                  /// The progress bar style can be [stroke] or [fill]
                  style: PaintingStyle.stroke,

                  /// Percentage progress is a number between [0] and [1]
                  percentage: .73,
                ),
              ),
              //spacer
              const SizedBox(
                height: 20,
              ),
              //divider
              const Divider(
                color: Color.fromARGB(255, 38, 0, 255),
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              const Text(
                "Read quran pages per month",
                style: TextStyle(fontSize: 20),
              ),
              SfCartesianChart(
                // Initialize category axis
                primaryXAxis: const CategoryAxis(),

                series: <LineSeries<ReadQuranAmount, String>>[
                  LineSeries<ReadQuranAmount, String>(
                      // Bind data source
                      dataSource: <ReadQuranAmount>[
                        ReadQuranAmount('Jan', 35),
                        ReadQuranAmount('Feb', 28),
                        ReadQuranAmount('Mar', 34),
                        ReadQuranAmount('Apr', 32),
                        ReadQuranAmount('May', 40),
                        ReadQuranAmount('Jun', 30)
                      ],
                      xValueMapper: (ReadQuranAmount sales, _) => sales.year,
                      yValueMapper: (ReadQuranAmount sales, _) => sales.pages,
                      // Enable data label
                      dataLabelSettings: const DataLabelSettings(isVisible: true)
                      )
                       // Enable data label
                      
                ],
              ),
              // divider
              const Divider(
                color: Color.fromARGB(255, 38, 0, 255),
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              //text
              const Text(
                "About Me",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width:  MediaQuery.of(context).size.width * 0.9,
                child: const ReadMoreText(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                "My name is Seif Tamer Heakal, and I'm a devoted One Piece fan, artist, and computer engineering student. Ever since I was young, the adventures of Luffy and his crew captivated my imagination, teaching me about perseverance and the importance of chasing dreams. This love for One Piece has deeply influenced my life, inspiring my artistic pursuits. I love creating art that brings fantastical worlds and characters to life, drawing from the vibrant energy and dynamic storytelling of the anime. At the same time, my fascination with technology led me to study computer engineering, where I dive into the complexities of hardware and the challenges of cybersecurity. I’m passionate about developing innovative solutions to protect our digital world and am particularly intrigued by the potential of quantum computers to revolutionize how we solve problems. Balancing my studies with my love for art, I find joy in combining creativity with technical know-how, approaching challenges from unique perspectives. Inspired by the adventurous spirit of the Straw Hat crew, I navigate my journey with determination, creativity, and a relentless pursuit of knowledge, always striving to merge my passions for art and technology into a meaningful and exciting path forward.",
                trimMode: TrimMode.Line,
                trimLines: 2,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ReadQuranAmount {
  ReadQuranAmount(this.year, this.pages);
  final String year;
  final double pages;
}
