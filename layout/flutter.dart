// lib/components/custom_button.dart

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({required this.buttonText, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.orange, // Cor de fundo
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Bordas arredondadas
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Tamanho do botão
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
