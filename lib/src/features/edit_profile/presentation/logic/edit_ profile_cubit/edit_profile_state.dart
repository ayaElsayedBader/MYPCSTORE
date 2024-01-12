import '../../../../register/entities/model/register_model.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final UserModel userModel;

  ProfileSuccess({required this.userModel});
}

class ProfileFailure extends ProfileState {
  final String errorMessage;

  ProfileFailure({required this.errorMessage});
}

class ProfileLoading extends ProfileState {}

class UpDataProfileSuccess extends ProfileState {
  final UserModel userModel;

  UpDataProfileSuccess({required this.userModel});
}

class UpDataProfileFailure extends ProfileState {
  final String errorMessage;

  UpDataProfileFailure({required this.errorMessage});
}

class UpDataProfileLoading extends ProfileState {}

class Edit extends ProfileState {}

class SaveEdit extends ProfileState {}
class ProfileReload extends ProfileState {}

