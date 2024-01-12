import 'package:flutter/material.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/custom_validators.dart';

class ColumnTextFieldEmailPassword extends StatelessWidget {
  const ColumnTextFieldEmailPassword(
      {super.key,
      required this.emailController,
      required this.passwordController});

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWidget(
            type: StringApp.emil,
            validator: (value) {
              return MyValidators.emailValidator(value);
            },
            controller: emailController,
            textInputType: TextInputType.emailAddress),
        const SizedBox(
          height: SizeApp.size30,
        ),
        TextFormFieldWidget(
            validator: (value) {
              return MyValidators.passwordValidator(value);
            },
            type: StringApp.password,
            controller: passwordController,
            textInputType: TextInputType.text),
      ],
    );
  }
}
