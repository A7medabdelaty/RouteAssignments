import 'package:flutter/material.dart';
import 'package:flutterassignments/assignment1/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routeName = 'Login Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(top: 170, left: 15, right: 15, bottom: 20),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(22, 90, 255, 0.85),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Icon(
                    Icons.facebook,
                    size: 70,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email or Phone',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                      minWidth: double.infinity,
                      color: const Color.fromRGBO(103, 151, 250, 1.0),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Home.routeName);
                      },
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign Up for Facebook',
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
