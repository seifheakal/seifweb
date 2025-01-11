import 'package:flutter/material.dart';
import 'package:seifweb/utils/project_utils.dart';
import 'dart:math';
import 'dart:js' as js;

class Projectcardwidget extends StatelessWidget {
  const Projectcardwidget({
    super.key,
    required this.project,
    this.width = 0.45,
  });

  final ProjectUtils project;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: max(MediaQuery.of(context).size.height * 0.5,300),
      width: min(MediaQuery.of(context).size.width * width, 700),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 135, 101, 245),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image,
            height: max(MediaQuery.of(context).size.height * 0.3,300*0.6),
            width: min(MediaQuery.of(context).size.width * width, 700),
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, top: 6, bottom: 2, right: 8),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: min(MediaQuery.of(context).size.width * width, 700),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Text(
                        project.description,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          Container(
            color: const Color.fromARGB(255, 72, 67, 90),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Available on",
                  style: TextStyle(
                    color: Color.fromARGB(255, 183, 255, 0),
                  ),
                ),
                if (project.giturl != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.giturl]);
                    },
                    child: Image.asset(
                      "assets/projects/git.jpg",
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
