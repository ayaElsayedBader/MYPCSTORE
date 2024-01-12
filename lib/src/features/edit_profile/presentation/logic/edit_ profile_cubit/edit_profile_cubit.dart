import 'package:bloc/bloc.dart';

import '../../../entities/usecases/profile_usecases.dart';
import '../../../entities/usecases/update_usecases.dart';
import 'edit_profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileUseCase, required this.upDataUseCase})
      : super(ProfileInitial());
  final ProfileUseCase profileUseCase;
  final UpDataUseCase upDataUseCase;
  bool isEditingName = false;
  bool isEditingEmail = false;
  bool isEditingPhone = false;

  void profileUser() async {
    emit(ProfileLoading());
    try {
      var response = profileUseCase.call();
      response.then((value) {
        emit(ProfileSuccess(userModel: value));
      });
    } catch (error) {
      emit(ProfileFailure(errorMessage: error.toString()));
    }
  }

  void upDataProfile({required name, required phone, required email}) async {
    emit(ProfileLoading());
    try {
      var response =
          await upDataUseCase.call(name: name, phone: phone, email: email);

      emit(UpDataProfileSuccess(userModel: response));

      profileUser();
    } catch (error) {
      emit(ProfileFailure(errorMessage: error.toString()));
    }
  }

  void editName() {
    isEditingName = true;
    emit(Edit());
  }

  void editEmail() {
    isEditingEmail = true;
    emit(Edit());
  }

  void editPhone() {
    isEditingPhone = true;
    emit(Edit());
  }

  void saveEdit() {
    isEditingName = false;
    isEditingEmail = false;
    isEditingPhone = false;
    emit(SaveEdit());
    emit(ProfileReload());
  }
}
