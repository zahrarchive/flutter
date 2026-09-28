import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myLabel;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.myLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        myLabel,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}