import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeApp.size60,
      width: SizeApp.size60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(
                'https://img.icons8.com/color/452/circled-user-male-skin-type-1-2--v1.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}
