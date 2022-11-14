import 'package:flutter/material.dart';
import 'package:flutterassignments/assignment2/route_app/android_screen.dart';
import 'package:flutterassignments/assignment2/route_app/fullstack_screen.dart';
import 'package:flutterassignments/assignment2/route_app/ios_screen.dart';

class RouteHomeScreen extends StatelessWidget {
  const RouteHomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'route home screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RouteAppOne'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/images/android.jpeg'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AndroidScreen.routeName);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                child: const Text('ANDROID COURSE'),
              ),
            ),
            Image.asset(
              'assets/images/ios.jpeg',
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, IosScreen.routeName);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                child: const Text('IOS COURSE'),
              ),
            ),
            Image.asset('assets/images/fullStack.jpeg'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FullStack.routeName);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                child: const Text('FULL STACK'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
