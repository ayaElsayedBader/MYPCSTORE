import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';

class BuildWelcomeBackWidget extends StatelessWidget {
  const BuildWelcomeBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: SizeApp.size200,
      width: SizeApp.size200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(SizeApp.size50),
          topRight: Radius.circular(SizeApp.size100),
        ),
        color: ColorApp.indigo,
      ),
      child: const Text(
        StringApp.welcome,
        style: TextStyle(color: ColorApp.kWhite, fontSize: SizeApp.size25),
      ),
    );
  }
}
