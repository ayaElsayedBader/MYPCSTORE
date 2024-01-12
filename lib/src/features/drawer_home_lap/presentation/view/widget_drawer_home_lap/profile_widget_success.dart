


  import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../register/entities/model/register_model.dart';
import 'build_profile_widget_drawer.dart';
class ProfileWidgetSuccess extends StatelessWidget {
  const ProfileWidgetSuccess({super.key, required this.userModel});
   final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeApp.size180,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorApp.kWhite ,
            borderRadius: BorderRadius.circular(SizeApp.size30)),
        child: BuildProfileWidget(userModel: userModel));
  }
}
