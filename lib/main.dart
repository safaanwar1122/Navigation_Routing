import 'package:flutter/material.dart';
import 'package:navigation_routing/home_screen.dart';
import 'package:navigation_routing/screen_three.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils_directory/routes.dart';
import 'package:navigation_routing/utils_directory/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
      //home: const HomeScreen(), // home is used for conventional method
      // initialRoute: HomeScreen.id, // 1st screen of routes
      // routes: //mention list of all routes
      //     {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ScreenTwo.id: (context) => ScreenTwo(),
      //   ScreenThree.id: (context) => ScreenThree(),
      // },
    );
  }
}
