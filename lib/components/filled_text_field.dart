import 'package:flutter/material.dart';

class FilledTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText; // Added for password field

  const FilledTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false, // Default to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText, // Apply obscure text flag
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Colors.white60,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black45, width: 2.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black45, width: 2.0),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
      ),
    );
  }
}
