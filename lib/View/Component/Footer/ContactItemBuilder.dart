import 'package:flutter/material.dart';
class ContactItemBuilder extends StatelessWidget {
  final TextStyle? textStyle;
  final double? spaceBetween;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final String? text;
  ContactItemBuilder({
    this.textStyle,
    this.spaceBetween,
    this.icon,
    this.text,
    this.iconColor,
    this.iconSize,
  });
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon,color:iconColor ,size: iconSize,),
        SizedBox(width: spaceBetween,),
        Text(
          text!,
          style: textStyle,
        ),
      ],
    );
  }
}