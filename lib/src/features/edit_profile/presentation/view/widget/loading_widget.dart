import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';

class LoadingWidgetEditProfile extends StatelessWidget {
  const LoadingWidgetEditProfile ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: SizeApp.size150,
        ),
        SizedBox(
            width: SizeApp.size200,
            child: Center(
              child: SpinKitFadingCube(
                color: ColorApp.kBlack,
                size: SizeApp.size50,
              ),
            )),
      ],
    );
  }
}
