import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(this.answerText, this.onTap, {super.key}); //Name Arguements
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  }); // Positional Arguments

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
