import '../../../register/entities/model/register_model.dart';
import '../repository_profile/repository_profile.dart';

class ProfileUseCase {
  final RepositoryProfile repositoryProFile;

  ProfileUseCase({required this.repositoryProFile});

  Future<UserModel> call() async {
    return await repositoryProFile.profile();
  }
}
