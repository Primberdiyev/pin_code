import 'package:flutter/material.dart';

class PinDots extends StatelessWidget {
  final int pinLength;
  final bool isPinIncorrect;

  const PinDots(
      {required this.pinLength, required this.isPinIncorrect, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) {
          return Container(
            margin: const EdgeInsets.all(5),
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index < pinLength
                  ? (isPinIncorrect ? Colors.red : Colors.blue)
                  : Colors.blue[100],
            ),
          );
        },
      ),
    );
  }
}
