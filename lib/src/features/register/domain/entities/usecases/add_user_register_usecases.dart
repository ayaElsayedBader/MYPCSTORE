import '../model/register_model.dart';
import '../repository_register/repository_register.dart';

class AddUserRegisterUseCase {
  final RepositoryRegister repositoryRegister;

  AddUserRegisterUseCase({required this.repositoryRegister});

  Future<UserModel> addUserRegister(
      {required name,
      required email,
      required phone,
      required nationalId,
      required password,
      required token,
      required userImage}) async {
    return await repositoryRegister.addUser(
        email: email,
        phone: phone,
        nationalId: nationalId,
        passWord: password,
        userImage: userImage,
        token: token,
        name: name);
  }
}
