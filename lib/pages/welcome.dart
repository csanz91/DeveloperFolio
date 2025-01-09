import 'package:DeveloperFolio/include/Rows/welcomepagemain.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomePage extends StatelessWidget {
  final Function goTo;

  WelcomePage(this.goTo);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: WelcomePageDesk(goTo),
      tablet: WelcomePageTab(goTo),
    );
  }
}
