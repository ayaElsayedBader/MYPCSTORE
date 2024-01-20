import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../register/domain/entities/model/register_model.dart';
import '../../logic/edit_ profile_cubit/edit_profile_cubit.dart';
import '../../logic/edit_ profile_cubit/edit_profile_state.dart';
import '../widget/build_edit_details _profile.dart';
import '../widget/build_header.dart';
import '../widget/button_edit_profile.dart';
import '../widget/listener.dart';
import '../widget/loading_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key, required this.userModel});

  final UserModel userModel;

  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.zero, children: <Widget>[
      BuildHeader(
        userModel: userModel,
      ),
      Column(
        children: [
          const SizedBox(
            height: SizeApp.size40,
          ),
          BlocConsumer<ProfileCubit, ProfileState>(
              listener: listenerEditProfile,
              builder: (context, state) {
                ProfileCubit cubit = BlocProvider.of(context);

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: SizeApp.size50),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizeApp.size50,
                      ),
                      BuildEditDetailsProfile(
                        isEditing: cubit.isEditingName,
                        text: userModel.user?.name,
                        controller: nameController,
                        profileCubit: cubit,
                        onPressed: () {
                          cubit.editName();
                        },
                        textInputTyp: TextInputType.text,
                        hintText: StringApp.editName,
                      ),
                      BuildEditDetailsProfile(
                        isEditing: cubit.isEditingEmail,
                        text: userModel.user?.email,
                        controller: emailController,
                        profileCubit: cubit,
                        onPressed: () {
                          cubit.editEmail();
                        },
                        textInputTyp: TextInputType.emailAddress,
                        hintText: StringApp.editEmail,
                      ),
                      BuildEditDetailsProfile(
                          text: userModel.user?.phone,
                          controller: phoneController,
                          profileCubit: cubit,
                          isEditing: cubit.isEditingPhone,
                          onPressed: () {
                            cubit.editPhone();
                          },
                          textInputTyp: TextInputType.phone,
                          hintText: StringApp.editPhone),
                      if (state is Edit)
                        ButtonEditProfile(
                          onPressed: () {
                            cubit.upDataProfile(
                              name: nameController.text,
                              phone: phoneController.text,
                              email: emailController.text,
                            );
                            cubit.saveEdit();
                          },
                        ),
                      if (state is ProfileLoading)
                        const LoadingWidgetEditProfile()
                    ],
                  ),
                );
              }),
        ],
      ),
    ]));
  }
}
