import 'package:flutter/material.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils_directory/routes_name.dart';

class HomeScreen extends StatefulWidget {
  //static const String id='Home_Screen';
  //dynamic data;
   HomeScreen({Key? key, }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
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
                Navigator.pushNamed(context, RouteName.screenTwo,
                arguments:
                {// passing data in hashmaps in form of key value pairs
                  'Node': 'Js module',
                  'flutter':'Good for Apps'
                });

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ScreenTwo(
                //               name: 'Safa Anwar',
                //           num: 22,
                //             )));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text('Screen 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
