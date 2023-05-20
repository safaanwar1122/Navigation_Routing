

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_routing/home_screen.dart';
import 'package:navigation_routing/screen_three.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils_directory/routes_name.dart';

class Routes {
  //create method and pass arguments to it to move to relevent screen
  // using switch statement here
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) =>  HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) =>  ScreenTwo(data: settings.arguments as Map,));
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
