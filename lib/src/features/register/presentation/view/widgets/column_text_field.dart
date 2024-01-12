import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/custom_validators.dart';

class ColumnTextField extends StatelessWidget {
  const ColumnTextField(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.phoneController,
      required this.nationalIdController,
      required this.tokenController});

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final TextEditingController nationalIdController;
  final TextEditingController tokenController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWidget(
            type: StringApp.name,
            controller: nameController,
            textInputType: TextInputType.text,
            validator: (val) {
              return MyValidators.displayNamevalidator(val);
            }),
        const SizedBox(
          height: SizeApp.size10,
        ),
        TextFormFieldWidget(
          type: StringApp.emil,
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          validator: (val) {
            return MyValidators.emailValidator(val);
          },
        ),
        const SizedBox(
          height: SizeApp.size10,
        ),
        TextFormFieldWidget(
          type: StringApp.phone,
          controller: phoneController,
          textInputType: TextInputType.number,
          validator: (val) {
            return MyValidators.phoneValidator(val);
          },
        ),
        const SizedBox(
          height: SizeApp.size10,
        ),
        TextFormFieldWidget(
          type: StringApp.nationalId,
          controller: nationalIdController,
          textInputType: TextInputType.number,
          validator: (value) {
            return MyValidators.nationalIdValidator(value);
          },
        ),
        const SizedBox(
          height: SizeApp.size10,
        ),
        const SizedBox(
          height: SizeApp.size10,
        ),
        TextFormFieldWidget(
          type: StringApp.password,
          controller: passwordController,
          textInputType: TextInputType.text,
          validator: (val) {
            return MyValidators.passwordValidator(val);
          },
        ),
        const SizedBox(
          height: SizeApp.size10,
        ),
        TextFormFieldWidget(
          type: StringApp.token,
          controller: tokenController,
          textInputType: TextInputType.text,
          validator: (val) {
            return MyValidators.tokenValidator(val);
          },
        ),
      ],
    );
  }
}
