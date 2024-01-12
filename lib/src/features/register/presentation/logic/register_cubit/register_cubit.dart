import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pc/src/features/register/presentation/logic/register_cubit/register_state.dart';

import '../../../../../core/helper/cache_helper.dart';
import '../../../entities/usecases/add_user_register_usecases.dart';

class RegisterCubit extends Cubit<RegistrationState> {
  RegisterCubit({required this.addUserRegister}) : super(RegistrationInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final AddUserRegister addUserRegister;

  user({
    required name,
    required email,
    required phone,
    required nationalId,
    required password,
    required token,
  }) async {
    try {
      emit(RegistrationLoading());
      var repo = await addUserRegister.addUserRegister(
          name: name,
          email: email,
          phone: phone,
          nationalId: nationalId,
          password: password,
          userImage: userImage,
          token: token);

      // save token by shard pref UpData token by server
      CacheHelper.saveData(key: "newToken", value: repo.user?.token);

      emit(RegistrationSuccess(repo));

      //   CacheHelper.saveData(key: "token", value: userm);
      if (kDebugMode) {
        print(repo.user!.name);

        print(repo.status);

        print(repo.user?.token);
      }
    } catch (error) {
      if (kDebugMode) {
        print(" Failure Register this ${error.toString()}");
      }
      emit(RegistrationFailure(errorMessage: error.toString()));
    }
  }

  ImagePicker picker = ImagePicker();
  File? image;
  Uint8List? bytes;
  String? userImage;

  Future<void> addImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      bytes = File(image!.path).readAsBytesSync();
      userImage = base64Encode(bytes!);
      if (kDebugMode) {
        print('images = $userImage');
      }
      emit(ChooseImage());
    } else {
      if (kDebugMode) {
        print('no image selected');
      }
    }
  }
}
