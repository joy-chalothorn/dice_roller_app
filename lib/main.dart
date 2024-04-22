import 'package:dice_roller_app/custom_gradient.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DiceRollerApp(),
      ),
    );

class DiceRollerApp extends StatelessWidget {
  const DiceRollerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomGradient(),
    );
  }
}
