import '../../../../register/domain/entities/model/register_model.dart';
import '../repository_profile/repository_profile.dart';

class UpDataUseCase {
  final RepositoryProfile repositoryProFile;

  UpDataUseCase({required this.repositoryProFile});

  Future<UserModel> call(
      {required name, required phone, required email}) async {
    return await repositoryProFile.update(
        name: name, email: email, phone: phone);
  }
}
