

import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final void Function(String val) onTextChanged;
  final String label;
  const AuthTextField({
    super.key,
    required this.onTextChanged,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(),
      ),
      onChanged: onTextChanged,
    );
  }
}