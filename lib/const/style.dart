import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;

  const PrimaryText({super.key, this.text, this.color, this.size, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
          color: color!,
          fontSize: size!,
          fontWeight: fontWeight!),
    );
  }
}
