
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../register/presentation/view/screen/register.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringApp.doYouWantToCreateAnAccount,
          style: StyleApp.style14we600black
              .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                context.push(RegisterScreen());
              },
              child: Text(StringApp.register,
                  style: StyleApp.style24we700blue.copyWith(
                      fontSize: SizeApp.size20, color: ColorApp.indigo))),
        ),
      ],
    );
  }
}
