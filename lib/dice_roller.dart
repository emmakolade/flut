import 'package:flutter/material.dart';
import 'dart:math';

final randomMizer = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = "assets/dice-1.png";
  var currentRoll = 1;

  void rollDice() {
    // print("Clicked");
    setState(() {
      currentRoll = randomMizer.nextInt(6) + 1;
      // activeDiceImage = "assets/dice-$randomNumber.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/dice-$currentRoll.png", width: 200),
        // const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
