import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

var startAlignment = Alignment.topLeft;

class GradientCotainer extends StatelessWidget {
  const GradientCotainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 12, 3, 29),
            const Color.fromARGB(255, 20, 197, 228),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
