import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/on_boarding_cubit.dart';

class BuildButtonLoginOrNextOnBoarding extends StatelessWidget {
  const BuildButtonLoginOrNextOnBoarding(
      {super.key, required this.onBoardingCubit});

  final OnBoardingCubit onBoardingCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
            text: onBoardingCubit.currentIndex == 2
                ? StringApp.login
                : StringApp.next,
            width: SizeApp.size100,
            height: SizeApp.size34,
            color: ColorApp.indigo,
            onPressed: () {}),
      ],
    );
  }
}
