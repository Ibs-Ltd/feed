import 'package:flutter/cupertino.dart';

class AppTextView extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? size;
  final Color? color;


   const AppTextView({super.key, required this.text, this.fontWeight,  this.size,  this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,style:TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
      fontSize: size,
    ),);
  }
}