import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  final double fontSize;
  final void Function(String text) onChanged;
  final String Function(String? text) validator;
  const InputText({
    Key? key,
    this.label = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
    this.fontSize = 15,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(fontSize: fontSize, color: const Color(0xff345b63)),
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        enabledBorder: borderEnabled
            ? const OutlineInputBorder() /*const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              )*/
            : InputBorder.none,
        border: const OutlineInputBorder(),
        labelStyle: const TextStyle(
          color: Color(0xff345B63),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
