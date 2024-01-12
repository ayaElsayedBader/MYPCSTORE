import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../register/entities/model/register_model.dart';
import 'image_profile_drawer.dart';

class RowImageEmailPhoneProfile extends StatelessWidget {
  const RowImageEmailPhoneProfile({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageProfileWidget(image: userModel.user?.profileImage ?? ""),
        const SizedBox(
          width: SizeApp.size12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${userModel.user?.name}",
              style: StyleApp.style18we600black,
            ),
            const SizedBox(
              height: SizeApp.size5,
            ),
            Text(" 📩  ${userModel.user?.email}",
                style: StyleApp.style14we600black),
            const SizedBox(
              height: SizeApp.size5,
            ),
            Text(" ☎  ${userModel.user?.phone}"),
          ],
        ),
      ],
    );
  }
}
