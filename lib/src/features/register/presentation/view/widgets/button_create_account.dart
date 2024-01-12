import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helper/cache_helper.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/value.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../logic/register_cubit/register_cubit.dart';

class ButtonCreateAccount extends StatelessWidget {
  const ButtonCreateAccount(
      {super.key,
      required this.formKey,
      required this.registerCubit,
      required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.phoneController,
      required this.nationalIdController,
      required this.tokenController});

  final GlobalKey<FormState> formKey;
  final RegisterCubit registerCubit;

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final TextEditingController nationalIdController;
  final TextEditingController tokenController;

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: StringApp.createAccount,
      width: double.infinity,
      height: SizeApp.size60,
      onPressed: () {
        nationalId = nationalIdController.text;

        CacheHelper.saveData(key: "national_id", value: nationalId);

        if (kDebugMode) {
          print(savedNationalId);
        }

        token = CacheHelper.getData(key: "token");

        if (formKey.currentState!.validate()) {
          registerCubit.user(
            name: nameController.text,
            email: emailController.text,
            nationalId: nationalId,
            password: passwordController.text,
            phone: phoneController.text,
            token: token,
          );
          if (kDebugMode) {
            print(token);
          }
        }
      },
      color: ColorApp.indigo,
    );
  }
}
