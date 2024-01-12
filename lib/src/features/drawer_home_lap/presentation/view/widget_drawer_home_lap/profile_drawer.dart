import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pc/src/features/drawer_home_lap/presentation/view/widget_drawer_home_lap/profile_widget_success.dart';

import '../../../../edit_profile/presentation/logic/edit_ profile_cubit/edit_profile_cubit.dart';
import '../../../../edit_profile/presentation/logic/edit_ profile_cubit/edit_profile_state.dart';

class ProfileInDrawerHomeLap extends StatelessWidget {
  const ProfileInDrawerHomeLap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ProfileSuccess) {
            return ProfileWidgetSuccess(
              userModel: state.userModel,
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
