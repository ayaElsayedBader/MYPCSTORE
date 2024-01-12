import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

class ButtonEditProfile extends StatelessWidget {
  const ButtonEditProfile({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: SizeApp.size150,
      elevation: SizeApp.size5,
      onPressed: onPressed,
      color: ColorApp.indigo,
      child:
          const Text(StringApp.editProfile, style: StyleApp.style18we500white),
    );
  }
}
