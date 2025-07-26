import 'package:flutter/material.dart';

class EmailTextfieldWidget extends StatelessWidget {
  const EmailTextfieldWidget({
    super.key,
    required this.controller,
    required this.onChanged,
    this.labelText = 'Email',
    this.hintText = 'Enter your email',
  });

  final TextEditingController controller;
  final Function(String) onChanged;
  final String labelText;
  final String hintText;

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: _emailValidator,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }
}
