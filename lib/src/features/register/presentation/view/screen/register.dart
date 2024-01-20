import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../logic/register_cubit/register_cubit.dart';
import '../../logic/register_cubit/register_state.dart';
import '../widgets/button_create_account.dart';
import '../widgets/column_text_field.dart';
import '../widgets/listener.dart';
import '../widgets/loaing_register_widget.dart';
import '../widgets/row_already _have.dart';
import '../widgets/row_create_account.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _nationalIdController = TextEditingController();
  final TextEditingController _tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RegisterCubit registerCubit = RegisterCubit.get(context);

    return BlocConsumer<RegisterCubit, RegistrationState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: SizeApp.size50, horizontal: SizeApp.size25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RowCreateAccount(
                          registerCubit: registerCubit,
                        ),
                        const Text(
                          StringApp.signUpNow,
                          style: StyleApp.style14we400grey,
                        ),
                        const SizedBox(
                          height: SizeApp.size10,
                        ),
                        ColumnTextField(
                          nameController: _nameController,
                          emailController: _emailController,
                          passwordController: _passwordController,
                          phoneController: _phoneController,
                          nationalIdController: _nationalIdController,
                          tokenController: _tokenController,
                        ),
                        const SizedBox(
                          height: SizeApp.size10,
                        ),
                        ButtonCreateAccount(
                          formKey: formKey,
                          registerCubit: registerCubit,
                          nameController: _nameController,
                          emailController: _emailController,
                          phoneController: _phoneController,
                          nationalIdController: _nationalIdController,
                          tokenController: _tokenController,
                          passwordController: _passwordController,
                        ),
                        const SizedBox(
                          height: SizeApp.size15,
                        ),
                        if (state is RegistrationLoading)
                          const LoadingRegisterWidget(),
                        const RowAlreadyHaveAccount(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        listener: listener);
  }
}
