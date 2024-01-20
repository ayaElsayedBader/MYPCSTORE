

import '../../../domain/entities/model/register_model.dart';

abstract class RegistrationState {}

class RegistrationInitial extends RegistrationState {}

class RegistrationLoading extends RegistrationState {}

class RegistrationFailure extends RegistrationState {
  final String errorMessage;

  RegistrationFailure({required this.errorMessage});
}

class RegistrationSuccess extends RegistrationState {
  final UserModel userModel;

  RegistrationSuccess(this.userModel);
}


class ChooseImage extends RegistrationState {}
