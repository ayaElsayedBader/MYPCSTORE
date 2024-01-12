
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/helper/cache_helper.dart';
import '../../../../../core/manger/list_onboarding.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../login/presentation/view/screen/login_screen.dart';
import '../../logic/cubit/on_boarding_cubit.dart';
import 'build_  on_boarding.dart';

class BuildPageViewOnBoarding extends StatelessWidget {
  const BuildPageViewOnBoarding({
    super.key,
    required this.pageController,
    required this.onBoardingCubit,
  });

  final OnBoardingCubit onBoardingCubit;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.size500,
      child: PageView.builder(
          onPageChanged: (index) {
            if (index == listOnBoarding.length - 1) {
              onBoardingCubit.lastPage(index: index);
              context.push(LoginScreen());

              CacheHelper.saveData(key: "onBoarding", value: true);
            } else {
              onBoardingCubit.noLastPage(index: index);
            }
          },
          controller: pageController,
          itemCount: listOnBoarding.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                BuildOnBoardingApp(
                  onBoardingModel: listOnBoarding[index],
                ),
              ],
            );
          }),
    );
  }
}
