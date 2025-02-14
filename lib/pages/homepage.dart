import 'package:DeveloperFolio/configure/centeredview.dart';
import 'package:DeveloperFolio/include/homepage/homemain.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ScreenTypeLayout(
                desktop: CenteredViewDesk(child: HomeDesktop()),
                tablet: CenteredViewTab(child: HomeTab()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
