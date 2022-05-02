import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.onSaved,
    required this.validator,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  final void Function(String? value) onSaved;
  final String? Function(String? value) validator;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: InputBorder.none,
        ),
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
