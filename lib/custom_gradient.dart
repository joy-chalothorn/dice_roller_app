import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.yellowAccent,
            Colors.blue,
            Colors.deepPurple,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
