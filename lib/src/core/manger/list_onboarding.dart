import 'package:pc/src/core/manger/string_onboarding.dart';

import '../../features/on_boarding/domain/model/onboarding_model.dart';
import 'image_manger.dart';

List<OnBoardingModel> listOnBoarding = [
  OnBoardingModel(
      title: StringManger.titleOnBoarding1,
      subTitle: StringManger.subOnBoarding11,
      image: ImageManger.lapImage),
  OnBoardingModel(
      title: StringManger.titleOnBoarding12,
      subTitle: StringManger.subOnBoarding12,
      image: ImageManger.phone1),
  OnBoardingModel(
      title: StringManger.titleOnBoarding13,
      subTitle: StringManger.subOnBoarding13,
      image: ImageManger.phone12)
];
