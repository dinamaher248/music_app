import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, 
    required this.color,
    required this.fontSize,
    this.fontWeight,
    required this.text,
    this.textAlign,
    this.isThemeColor=true,
  });
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool isThemeColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      softWrap: true, 
      style: TextStyle(
         fontFamily: 'JFFlat',
        color: isThemeColor? Theme.of(context).colorScheme.onSurface : color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      )
    );
  }
}
