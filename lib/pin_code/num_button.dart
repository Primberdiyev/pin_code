import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final int number;
  final Function(int) onPressed;

  const NumButton({required this.number, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 80,
      height: 78,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.zero,
      onPressed: () => onPressed(number),
      child: Text(
        number.toString(),
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
