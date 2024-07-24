import 'package:flutter/material.dart';

import "package:pin_code/first_window/first_window.dart";

class ContinueButton extends StatelessWidget {
  final bool isVisible;
  final BuildContext context;

  const ContinueButton(
      {required this.isVisible, required this.context, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        width: 320,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstWindow()),
              );
            },
            child: const Text(
              'Продолжить',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
