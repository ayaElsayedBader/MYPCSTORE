import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases_login/usecases_login.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.useCaseLogin}) : super(LoginInitial());
  final UseCaseLogin useCaseLogin;

  LoginCubit get(context) => BlocProvider.of(context);

  loginCubit({required email, required password}) async {
    emit(LoginLoading());
    var response = await useCaseLogin.call(email, password);
    response.fold((failure) {
      emit(LoginFailure(errorMessage: failure.errorMessage.toString()));
      if (kDebugMode) {
        print(" failure login is here${failure.errorMessage.toString()}");
      }
    }, (user) {
      emit(LoginSuccess(userModel: user));
    });
  }
}
