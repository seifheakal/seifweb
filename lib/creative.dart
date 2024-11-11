import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:collection/collection.dart';

final List<String> imgList = [
  'https://i0.wp.com/astrafizik.com/wp-content/uploads/2022/12/Quantum_Computing_Image.webp',
  'https://www.collegetransitions.com/wp-content/uploads/2024/01/ap-physics-cem-calculator.jpg',
  'https://th.bing.com/th/id/R.2c64341236bf36b27e5ecc00b3eb6a11?rik=aEvCqH0qbIHK3A&pid=ImgRaw&r=0',
  'https://miro.medium.com/v2/resize:fit:720/format:webp/0*EwgCmUQXtqcuUBfx.jpg',
  'https://pbs.twimg.com/media/DhlXy5TW4AEqdH6?format=jpg&name=small',
];

class View5 extends StatelessWidget {
  const View5({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
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
              // carousel
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.9,
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                ),
              ),
              // divider
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
              const Text(
                "progress in junior cyber security analyst course by CISCO",
                style: TextStyle(fontSize: 20),
              ),
              //spacer
              const SizedBox(
                height: 20,
              ),
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
                "Focus hours per month",
                style: TextStyle(fontSize: 20),
              ),
              SfCartesianChart(
                // Initialize category axis
                primaryXAxis: const CategoryAxis(),

                series: <LineSeries<FocusHours, String>>[
                  LineSeries<FocusHours, String>(
                      // Bind data source
                      dataSource: <FocusHours>[
                        FocusHours('Jan', 110),
                        FocusHours('Feb', 118),
                        FocusHours('Mar', 144),
                        FocusHours('Apr', 132),
                        FocusHours('May', 150),
                        FocusHours('Jun', 230),
                        FocusHours("July", 90),
                        FocusHours("Aug", 280),
                        FocusHours("Sep", 240),
                        FocusHours("Oct", 200),
                        FocusHours("Nov", 120),
                      ],
                      xValueMapper: (FocusHours sales, _) => sales.year,
                      yValueMapper: (FocusHours sales, _) => sales.hours,
                      // Enable data label
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true))
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
                width: MediaQuery.of(context).size.width * 0.9,
                child: const ReadMoreText(
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  "My name is Seif Tamer Heakal, and I'm a devoted One Piece fan, artist, and computer engineering student. Ever since I was young, the adventures of Luffy and his crew captivated my imagination, teaching me about perseverance and the importance of chasing dreams. This love for One Piece has deeply influenced my life, inspiring my artistic pursuits. I love creating art that brings fantastical worlds and characters to life, drawing from the vibrant energy and dynamic storytelling of the anime. At the same time, my fascination with technology led me to study computer engineering, where I dive into the complexities of hardware and the challenges of cybersecurity. I’m passionate about developing innovative solutions to protect our digital world and am particularly intrigued by the potential of quantum computers to revolutionize how we solve problems. Balancing my studies with my love for art, I find joy in combining creativity with technical know-how, approaching challenges from unique perspectives. Inspired by the adventurous spirit of the Straw Hat crew, I navigate my journey with determination, creativity, and a relentless pursuit of knowledge, always striving to merge my passions for art and technology into a meaningful and exciting path forward.",
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
              // spacer
              const SizedBox(
                height: 20,
              ),
              // scatter plot
              Scatter(
                fillGaps: true,
                children: [
                  "Cyber Security",
                  "Quantum Computing",
                  "Digital Hardware Design",
                  "Layout",
                  "Testing",
                  "Verification",
                ]
                    .map((x) => Text(
                          x,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ))
                    .mapIndexed((idx, x) => RotatedBox(
                          quarterTurns: idx % 2 == 0 ? 1 : 0,
                          child: x,
                        ))
                    .toList(),
              ),
              //spacer
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FocusHours {
  FocusHours(this.year, this.hours);
  final String year;
  final double hours;
}
