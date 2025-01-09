import 'package:flutter/material.dart';
import 'dart:js' as js;

const String header = "Cesar Sanz's Portfolio";
const String subHeader =
    "Automation engineer and a passionate software developer";

Widget getButton(String text, Function onTap) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  );
}

class WelcomePageDesk extends StatelessWidget {
  final Function goTo;

  const WelcomePageDesk(this.goTo, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            header,
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            subHeader,
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            getButton(
              "CONTACT ME",
              () {
                goTo(9990.0);
              },
            ),
            SizedBox(
              width: 50,
            ),
            getButton(
              'SEE MY RESUME',
              () {
                js.context.callMethod(
                    "open", ["https://cesarsanz.dev/Curriculum.pdf"]);
              },
            ),
          ]),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  final Function goTo;

  const WelcomePageTab(this.goTo, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                header,
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                subHeader,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              getButton(
                "CONTACT ME",
                () {
                  goTo(9990.0);
                },
              ),
              SizedBox(
                width: 50,
              ),
              getButton(
                'SEE MY RESUME',
                () {
                  js.context.callMethod(
                      "open", ["https://cesarsanz.dev/Curriculum.pdf"]);
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  final Function goTo;
  const WelcomePageMob(this.goTo, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                header,
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                subHeader,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: getButton(
                "CONTACT ME",
                () {
                  goTo(9990.0);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Center(
                child: getButton(
                  'SEE MY RESUME',
                  () {
                    js.context.callMethod(
                        "open", ["https://cesarsanz.dev/Curriculum.pdf"]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
