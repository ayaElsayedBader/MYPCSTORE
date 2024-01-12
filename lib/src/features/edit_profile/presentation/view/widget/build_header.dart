import 'package:flutter/material.dart';

import '../../../../../core/manger/image_manger.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../register/entities/model/register_model.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: SizeApp.size400,
          child: Expanded(
              child: Image.asset(
            ImageManger.backProfile,
            height: SizeApp.size400,
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
          bottom: SizeApp.sizeM70,
          child: CircleAvatar(
            radius: SizeApp.size60,
            backgroundImage: NetworkImage(userModel.user?.profileImage),
          ),
        ),
      ],
    );
  }
}
