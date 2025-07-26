import 'package:flutter/material.dart';

class BasicTextfieldWidget extends StatefulWidget {
  const BasicTextfieldWidget({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    this.validator,
  });

  final TextEditingController controller;
  final Function(String) onChanged;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  State<BasicTextfieldWidget> createState() => _BasicTextfieldWidgetState();
}

class _BasicTextfieldWidgetState extends State<BasicTextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}
