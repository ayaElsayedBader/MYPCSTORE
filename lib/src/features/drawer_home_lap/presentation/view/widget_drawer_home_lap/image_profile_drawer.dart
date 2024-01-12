import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';


class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeApp.size80,
      width: SizeApp.size80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
      ),
    );
  }
}
