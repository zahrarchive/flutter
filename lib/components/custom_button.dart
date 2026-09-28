import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myLabel;
  final VoidCallback onPressed;
  final Color? bgColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.myLabel,
    required this.onPressed,
    this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: textColor,
      ),
      child: Text(
        myLabel,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}