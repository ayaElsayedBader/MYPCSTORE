import '../../../../register/entities/model/register_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  final UserModel userModel;

  LoginSuccess({required this.userModel});
}

class LoginFailure extends LoginState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

class LoginLoading extends LoginState {}
