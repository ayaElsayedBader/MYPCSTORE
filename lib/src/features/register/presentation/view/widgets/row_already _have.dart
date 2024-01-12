import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../login/presentation/view/screen/login_screen.dart';

class RowAlreadyHaveAccount extends StatelessWidget {
  const RowAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(StringApp.alreadyHave,
            style: StyleApp.style14we600black
                .copyWith(fontWeight: FontWeight.w400)),
        TextButton(
            onPressed: () {
              context.push(LoginScreen());
            },
            child: Text(" ${StringApp.login} ?",
                style: StyleApp.style24we700blue.copyWith(
                    fontSize: SizeApp.size16, color: ColorApp.indigo)))
      ],
    );
  }
}
