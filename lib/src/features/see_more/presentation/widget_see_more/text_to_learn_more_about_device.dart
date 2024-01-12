import 'package:flutter/material.dart';

import '../../../../core/manger/color_app.dart';
import '../../../../core/manger/size_app.dart';
import '../../../../core/manger/string_app.dart';

class TextToLearNMoreAboutDevice extends StatelessWidget {
  const TextToLearNMoreAboutDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        StringApp.toLearnAboutDevice,
        style: TextStyle(color: ColorApp.kBlue, fontSize: SizeApp.size20),
      ),
    );
  }
}
