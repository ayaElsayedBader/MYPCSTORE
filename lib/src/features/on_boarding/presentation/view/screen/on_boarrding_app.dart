import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/theme_cubit/theme_cubit.dart';
import '../../../../../config/theme_cubit/theme_state.dart';
import '../../../../../core/manger/size_app.dart';
import '../../logic/cubit/on_boarding_cubit.dart';
import '../../logic/cubit/on_boarding_state.dart';
import '../widgets/app_bar_onboarding.dart';
import '../widgets/button_login_or_next_onboarding.dart';
import '../widgets/button_skip_onboarding.dart';
import '../widgets/page_view_onboarding.dart';
import '../widgets/smooth_page_indicator.dart';

class OnBoardingApp extends StatelessWidget {
  OnBoardingApp({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context);
    OnBoardingCubit onBoardingCubit = BlocProvider.of<OnBoardingCubit>(context);
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Scaffold(
        appBar: appBarOnBoarding(themeCubit: themeCubit),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const ButtonSkipOnBoarding(),
            BlocConsumer<OnBoardingCubit, OnBoardingState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Column(
                  children: [
                    BuildPageViewOnBoarding(
                      pageController: pageController,
                      onBoardingCubit: onBoardingCubit,
                    ),
                    const SizedBox(width: SizeApp.size100),
                    Column(
                      children: [
                        BuildSmoothPageIndicatorOnBoarding(
                          pageController: pageController,
                        ),
                        const SizedBox(width: SizeApp.size30),
                        BuildButtonLoginOrNextOnBoarding(
                          onBoardingCubit: onBoardingCubit,
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );
    });
  }
}
