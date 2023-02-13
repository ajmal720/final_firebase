// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final TextEditingController text_controller;
  final String hint_text;
  final String lebel_text;
  final double radius;

  const Text_Field(
      {super.key,
      required this.text_controller,
      required this.hint_text,
      required this.lebel_text, required this.radius});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                
      controller: text_controller,
      decoration: InputDecoration(
    
    
      hintText: hint_text,
      labelText: lebel_text,
      border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(radius))),
    );
  }
}
