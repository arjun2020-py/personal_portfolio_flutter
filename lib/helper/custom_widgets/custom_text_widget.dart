import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key, required this.fontSize, required this.text,required this.color,this.fontWeight});
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize,fontWeight:fontWeight ),
    );
  }
}
