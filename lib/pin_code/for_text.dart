import 'package:flutter/material.dart';

class ForText extends StatelessWidget {
  final String message;
  final Color messageColor;

  const ForText({required this.message, required this.messageColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            color: messageColor,
          ),
        ),
      ),
    );
  }
}
