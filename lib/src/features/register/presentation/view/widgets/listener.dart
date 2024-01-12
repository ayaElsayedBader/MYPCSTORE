import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_show_snack_bar.dart';
import '../../../../home_lap/presentation/view/screen/home_lap.dart';
import '../../logic/register_cubit/register_state.dart';

void listener(BuildContext context, RegistrationState state) {
  if (state is RegistrationSuccess) {
    if (state.userModel.status == StringApp.error) {
      showSnackBar(
          context: context,
          widget: Text(state.userModel.message!),
          color: ColorApp.red);
    }

    if (state.userModel.status == StringApp.success) {
      showSnackBar(
          context: context,
          widget: Text(state.userModel.message!),
          color: ColorApp.kGreen);
      context.push(const HomeLap());
    }
  } else if (state is RegistrationFailure) {
    return showSnackBar(
        context: context,
        widget: Text(state.errorMessage),
        color: ColorApp.red);
  }
}
