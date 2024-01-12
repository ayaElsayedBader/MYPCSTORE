import 'package:flutter/material.dart';
import 'package:pc/src/features/drawer_home_lap/presentation/view/widget_drawer_home_lap/row_edit_text_icon_profile_widget.dart';
import 'package:pc/src/features/drawer_home_lap/presentation/view/widget_drawer_home_lap/row_image_email_phone_profile.dart';

import '../../../../../core/manger/size_app.dart';

import '../../../../register/entities/model/register_model.dart';

class BuildProfileWidget extends StatelessWidget {
  const BuildProfileWidget({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: SizeApp.size10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: SizeApp.size20,
          ),
          RowEditTextIconProfileWidget(
            userModel: userModel,
          ),
          const SizedBox(
            height: SizeApp.size10,
          ),
          RowImageEmailPhoneProfile(
            userModel: userModel,
          ),
        ],
      ),
    );
  }
}
