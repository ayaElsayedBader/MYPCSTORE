import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/manger/color_app.dart';
import '../../logic/login_cubit/login_cubit.dart';
import '../../logic/login_cubit/login_state.dart';
import '../widget/app_bar_login.dart';
import '../widget/build_login.dart';
import '../widget/listener.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.kWhite,
        appBar: appBarLogin(),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: listenerLogin,
          builder: (context, state) {
            LoginCubit loginCubit =
                BlocProvider.of<LoginCubit>(context).get(context);
            return SingleChildScrollView(
              child: BuildWidgetLogin(
                loginCubit: loginCubit,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
            );
          },
        ));
  }
}
