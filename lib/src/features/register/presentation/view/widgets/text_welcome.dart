import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

class TextWelcomeAndWere extends StatelessWidget {
  const TextWelcomeAndWere({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Text(StringApp.welcome, style: StyleApp.style24we700blue),
      SizedBox(
        height: SizeApp.size6,
      ),
      SizedBox(
        child: Text(
          StringApp.WereExcited,
          style: StyleApp.style14we400grey,
        ),
      ),
      SizedBox(
        height: SizeApp.size20,
      )
    ]);
  }
}
