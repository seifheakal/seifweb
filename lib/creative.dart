import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

class view5 extends StatelessWidget {
  const view5({super.key});

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
        title: Text(
          "Creative",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: [
              CarouselSlider(
                  items: [
                    Text("Hi", style: TextStyle(fontSize: 15),),
                    Text("This is my experimenting page", style: TextStyle(fontSize: 15),),
                    Text("Have Fun!", style: TextStyle(fontSize: 15),),
                  ],
                  options: CarouselOptions(
                    height: 20,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  )),
                  
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
