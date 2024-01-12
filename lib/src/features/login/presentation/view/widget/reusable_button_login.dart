import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../logic/login_cubit/login_cubit.dart';

class ReusableButtonLoginWidget extends StatelessWidget {
  const ReusableButtonLoginWidget({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onPressed: onPressed,
      text: StringApp.login,
      width: SizeApp.size300,
      height: SizeApp.size50,
      color: ColorApp.indigo,
    );
  }
}
