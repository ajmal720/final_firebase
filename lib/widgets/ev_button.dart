// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Ev_Button extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  final bool loading;
  final double height;
  final double width;
  
  late Color CantainerColor;
  late Color textColor;
  final double radius;

  Ev_Button(
      {super.key, required this.title,
      required this.onpress,
      this.loading = false,
      required this.height,
      required this.width,
      required this.radius,
      required this.textColor,
      
      required this.CantainerColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(radius),
          color: CantainerColor,
        ),
        height: height,
        width: width,
        child:  Center(child: loading? CircularProgressIndicator(strokeWidth: 3,color: textColor,): Text(title,style: TextStyle(color: textColor),)),
      ),
    );
  }
}
