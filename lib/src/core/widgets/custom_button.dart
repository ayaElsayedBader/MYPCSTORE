import 'package:flutter/material.dart';

import '../manger/text_style.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      this.onPressed,
      required this.color,
      required this.height,
      required this.width,
      required this.text});

  final void Function()? onPressed;
  final Color color;
  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      height: height,
      minWidth: width,
      child: Text(
        text,
        style: StyleApp.style18we500white,
      ),
    );
  }
}
