import 'package:DeveloperFolio/include/Rows/achievementsmain.dart';
import 'package:DeveloperFolio/include/Rows/contactpagemain.dart';
import 'package:DeveloperFolio/include/imagesmain/images.dart';
import 'package:DeveloperFolio/include/skillspage/skills_desk.dart';
import 'package:DeveloperFolio/include/Rows/skillslogosmain.dart';
import 'package:DeveloperFolio/include/Rows/welcomepagemain.dart';
import 'package:DeveloperFolio/pages/contactpage.dart';
import 'package:DeveloperFolio/pages/welcome.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  var _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void goTo(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(child: WelcomePage(goTo)),
                        Expanded(child: OneDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: TwoDesk()),
                        Expanded(child: SkillsLogo()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        Expanded(child: AchieveDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ContactPageGeneric(),
                        ),
                        Expanded(
                          child: FourDesk(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  var _scrollController = ScrollController();

  void goTo(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageTab(goTo),
                OneTab(),
                SkillsTab(),
                AchieveTab(),
                ContactPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
