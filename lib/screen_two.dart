import 'package:flutter/material.dart';
import 'package:navigation_routing/screen_three.dart';
import 'package:navigation_routing/utils_directory/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  // final String name;
  // final int num;

 // static const String id='Screen_two';
dynamic data;

   ScreenTwo({Key? key, required this.data })
      : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    //final arguments=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['flutter']),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
               Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text('Screen 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
