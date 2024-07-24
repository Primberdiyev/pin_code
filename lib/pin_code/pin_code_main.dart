import 'package:flutter/material.dart';
import 'package:pin_code/pin_code/num_button.dart';
import 'package:pin_code/pin_code/for_text.dart';
import 'package:pin_code/pin_code/pin_dots.dart';
import "package:pin_code/pin_code/continiue_button.dart";

class PinCode extends StatefulWidget {
  const PinCode({super.key});

  @override
  State<StatefulWidget> createState() => PinCodeState();
}

class PinCodeState extends State<PinCode> {
  String enteredPin = '';
  bool isPinIncorrect = false;
  String message = 'введите пин код вход в \nприложение';
  Color messageColor = Colors.black;

  void onNumberButtonPressed(int number) {
    setState(() {
      if (enteredPin.length < 4) {
        enteredPin += number.toString();
        if (enteredPin.length == 4) {
          if (enteredPin != '0000') {
            isPinIncorrect = true;
            message = 'пин коды совпали\n';
            messageColor = Colors.red;
          } else {
            isPinIncorrect = false;
            message = 'введите пин код вход в \nприложение';
            messageColor = Colors.black;
          }
        }
      }
    });
  }

  void onBackspacePressed() {
    setState(() {
      if (enteredPin.isNotEmpty) {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
        if (enteredPin.length < 4) {
          isPinIncorrect = false;
          message = 'введите пин код вход в \nприложение';
          messageColor = Colors.black;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ForText(message: message, messageColor: messageColor),
          const SizedBox(height: 30),
          PinDots(pinLength: enteredPin.length, isPinIncorrect: isPinIncorrect),
          const SizedBox(height: 40),
          for (var i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return NumButton(
                    number: 1 + 3 * i + index,
                    onPressed: onNumberButtonPressed,
                  );
                }).toList(),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextButton(onPressed: null, child: SizedBox()),
                NumButton(number: 0, onPressed: onNumberButtonPressed),
                TextButton(
                  onPressed: onBackspacePressed,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.backspace,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          ContinueButton(
              isVisible: !isPinIncorrect && enteredPin.length == 4,
              context: context),
        ],
      ),
    );
  }
}
