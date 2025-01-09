import 'package:flutter/material.dart';

const String header = "Who am I?";
const String subHeader = """
I'm an Automation Engineer, specialized in the Food and Beverage industry. I'm 31 years old and I live in Madrid, Spain.
In my free time, I love coding and electronics, so what better way to enjoy your passions than actually creating devices and tools that can make your live easier and cooler. 
""";

class SkillsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              header,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              subHeader,
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.left,
            ),
          ]),
    );
  }
}
