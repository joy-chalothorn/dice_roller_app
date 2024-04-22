import 'package:flutter/material.dart';

class CustomStyleText extends StatelessWidget {
  const CustomStyleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 28, color: Colors.black),
    );
  }
}
