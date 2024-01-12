import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Material(
      color: ColorApp.kWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

            SpinKitFadingCube(
              color: ColorApp.turquoiseBlue,
              size: SizeApp.size100,
            ),

          SizedBox(
            height: SizeApp.size50,
          ),
          Text(StringApp.loading),
        ],
      ),
    );
  }
}
