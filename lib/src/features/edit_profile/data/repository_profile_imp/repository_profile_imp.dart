import '../../../../core/errors/server_failure.dart';
import '../../../../core/network/network_info_impl.dart';
import '../../../register/entities/model/register_model.dart';
import '../../entities/repository_profile/repository_profile.dart';
import '../remote_data_source/profile_remote_data.dart';

class RepositoryProfileImp implements RepositoryProfile {
  final NetworkInfoImpl networkInfoImpl;
  final ProfileRemoteDataImp profileRemoteDataImp;

  RepositoryProfileImp(
      {required this.networkInfoImpl, required this.profileRemoteDataImp});

  @override
  Future<UserModel> profile() async {
    try {
      if (await networkInfoImpl.isConnected) {
        var profile = await profileRemoteDataImp.profile();
        return profile;
      } else {
        return Future.error(ServerFailure());
      }
    } catch (error) {
      return Future.error(" ERROR REGISTER ${error.toString()}");
    }
  }

  @override
  Future<UserModel> update(
      {required name, required phone, required email}) async {
    try {
      if (await networkInfoImpl.isConnected) {
        var upDataProfile = await profileRemoteDataImp.upData(
            name: name, phone: phone, email: email);
        return upDataProfile;
      } else {
        return Future.error(ServerFailure());
      }
    } catch (error) {
      return Future.error(" ERROR REGISTER ${error.toString()}");
    }
  }
}
