import 'package:flutter/material.dart';

import "package:pin_cod/register/register.dart";

class FirstWindow extends StatelessWidget {
  const FirstWindow({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Register()));
    });
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(255, 155, 99, 1),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/ice.png",
                  height: 132,
                  width: 158,
                ),
                const Text(
                  'Food Delivery Services',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          )),
    );
  }
}
