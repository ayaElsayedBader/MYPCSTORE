import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../register/presentation/view/screen/register.dart';

class ButtonSkipOnBoarding extends StatelessWidget {
  const ButtonSkipOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.push(RegisterScreen());
        },
        child: Text(
          StringApp.skip,
          style: StyleApp.style24we700blue.copyWith(  color: ColorApp.indigo),
        ));
  }
}
