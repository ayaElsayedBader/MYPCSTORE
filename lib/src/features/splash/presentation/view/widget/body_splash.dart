import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/image_manger.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: SizeApp.size70,
          ),
          Text(StringApp.textSplash, style: StyleApp.style24WeBoldIndigo),
          const SizedBox(height: SizeApp.size90),
          Image.asset(
            ImageManger.lapImage,
            width: SizeApp.size250,
            height: SizeApp.size250,
          ),
          const SizedBox(
            height: SizeApp.size90,
          ),
          const SpinKitFadingCube(
            color: ColorApp.indigo,
            size: SizeApp.size70,
          ),
        ],
      ),
    );
  }
}
