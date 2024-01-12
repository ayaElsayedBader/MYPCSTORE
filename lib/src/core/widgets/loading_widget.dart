import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../manger/color_app.dart';
import '../manger/size_app.dart';
import '../manger/string_app.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeApp.size200,
          ),
          SpinKitFadingCube(
            color: ColorApp.indigo,
            size: SizeApp.size70,
          ),
          SizedBox(
            height: SizeApp.size70,
          ),
          Text(StringApp.loading)
        ],
      ),
    );
  }
}
