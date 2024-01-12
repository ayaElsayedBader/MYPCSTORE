import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../edit_profile/presentation/view/screen/edit_profile_screen.dart';
import '../../../../register/entities/model/register_model.dart';

class RowEditTextIconProfileWidget extends StatelessWidget {
  const RowEditTextIconProfileWidget({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(StringApp.editProfile, style: StyleApp.style20We600Indigo),
        const Spacer(),
        IconButton(
            onPressed: () {
              context.push(ProfileScreen(
                userModel: userModel,
              ));
            },
            icon: const Icon(Icons.edit, color: ColorApp.indigo)),
      ],
    );
  }
}
