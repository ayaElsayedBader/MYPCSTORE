import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';

class ContainerEditDetailsProfile extends StatelessWidget {
  const ContainerEditDetailsProfile({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.only(bottom: SizeApp.size10),
          padding: const EdgeInsets.only(left: SizeApp.size15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeApp.size25),
              border: Border.all(color: ColorApp.indigo)),
          child: child),
    );
  }
}
