import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';

class LoadingRegisterWidget extends StatelessWidget {
  const LoadingRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: LinearProgressIndicator(
      color: ColorApp.indigo,
    ));
  }
}
