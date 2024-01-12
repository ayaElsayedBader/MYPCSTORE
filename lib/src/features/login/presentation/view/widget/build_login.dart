import 'package:flutter/material.dart';
import '../../../../../core/manger/size_app.dart';

import '../../logic/login_cubit/login_cubit.dart';
import 'build_welcome_back_widget.dart';
import 'create_new_account.dart';
import 'reusable_button_login.dart';
import 'column_text_field_email_password.dart';

class BuildWidgetLogin extends StatelessWidget {
  BuildWidgetLogin(
      {super.key,
      required this.loginCubit,
      required this.emailController,
      required this.passwordController});

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final LoginCubit loginCubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SizeApp.size22, horizontal: SizeApp.size20),
        child: Column(
          children: [
            const BuildWelcomeBackWidget(),
            const SizedBox(
              height: SizeApp.size100,
            ),
            ColumnTextFieldEmailPassword(
              emailController: emailController,
              passwordController: passwordController,
            ),
            const SizedBox(
              height: SizeApp.size50,
            ),
            ReusableButtonLoginWidget(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  loginCubit.loginCubit(
                      email: emailController.text,
                      password: passwordController.text);
                }
              },
            ),
            const SizedBox(
              height: SizeApp.size12,
            ),
            const CreateNewAccount()
          ],
        ),
      ),
    );
  }
}
