import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';
import '../../../../../core/helper/cache_helper.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/presentation/view/screen/home_lap.dart';
import '../../../../on_boarding/presentation/view/screen/on_boarrding_app.dart';
import '../widget/body_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  navigator() {
    context.pushReplacement(OnBoardingApp());
    var saveToken = CacheHelper.getData(key: "token");

    var onBoarding = CacheHelper.getData(key: "onBoarding");

    if (kDebugMode) {
      print(onBoarding);
      print(saveToken);
    }

    if (onBoarding == true) {
      if (saveToken != null) {
        context.push(const HomeLap());
      } else {
        context.push(OnBoardingApp());
      }
    }
  }

  getTimer() {
    timer = Timer(Duration(seconds: SizeApp.size3.toInt()), navigator);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.kWhite,
      body: BodySplash(),
    );
  }
}
