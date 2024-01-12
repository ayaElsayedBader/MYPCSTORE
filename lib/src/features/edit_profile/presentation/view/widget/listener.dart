
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_loading.dart';
import '../../../../../core/widgets/custom_show_snack_bar.dart';
import '../../logic/edit_ profile_cubit/edit_profile_state.dart';

void listenerEditProfile(BuildContext context, ProfileState state) {
  if (state is ProfileSuccess) {
    showSnackBar(
        context: context,
        widget: const Text(StringApp.editingSuccess),
        color: Colors.green);
    context.pushReplacement(LoadingScreen(
      userModel: state.userModel,
    ));
  }
}
