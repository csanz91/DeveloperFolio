import 'package:DeveloperFolio/configure/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:DeveloperFolio/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
