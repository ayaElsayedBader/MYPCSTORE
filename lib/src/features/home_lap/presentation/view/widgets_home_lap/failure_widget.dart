import 'package:flutter/material.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.text});

  final String text;
  final bool isNull = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          isNull ? text : StringApp.noInternet,
          style: StyleApp.style30WeNormalRed,
        ),
      ),
    );
  }
}
