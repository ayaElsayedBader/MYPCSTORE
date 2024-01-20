import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../domain/model/onboarding_model.dart';
import 'image_onboarding.dart';

class BuildOnBoardingApp extends StatelessWidget {
  const BuildOnBoardingApp({
    super.key,
    required this.onBoardingModel,
  });

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeApp.size30),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: SizeApp.size10),
            child: Text(onBoardingModel.title,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: SizeApp.size20),
            child: Text(onBoardingModel.subTitle,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          ImageOnboarding(
            image: onBoardingModel.image,
          )
        ],
      ),
    );
  }
}
