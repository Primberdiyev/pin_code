import 'package:flutter/material.dart';
import "package:pin_cod/pin_code/pin_code_main.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: PinCode(),
    ));
  }
}
