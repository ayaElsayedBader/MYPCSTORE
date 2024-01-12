import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_show_snack_bar.dart';
import '../../../../home_lap/presentation/view/screen/home_lap.dart';
import '../../logic/login_cubit/login_state.dart';

listenerLogin(BuildContext context, LoginState state) {
  if (state is LoginSuccess) {
    if (state.userModel.status == StringApp.error) {
      showSnackBar(
          context: context,
          widget: Text(
            state.userModel.message!,
          ),
          color: ColorApp.red);
    }

    if (state.userModel.status == StringApp.success) {
      context.pushReplacement(const HomeLap());
      showSnackBar(
          context: context,
          widget: Text(state.userModel.message!),
          color: ColorApp.kGreen);
    }
  } else if (state is LoginFailure) {
    showSnackBar(
        context: context,
        widget: Text(
          state.errorMessage,
        ),
        color: ColorApp.red);
  } else {
    showSnackBar(
        context: context,
        widget: const CircularProgressIndicator(),
        color: ColorApp.kGreen);
  }
}
