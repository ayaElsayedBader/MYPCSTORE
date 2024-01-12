import '../../../../core/errors/server_failure.dart';
import '../../../../core/network/network_info_impl.dart';
import '../../entities/model/register_model.dart';
import '../../entities/repository_register/repository_register.dart';
import '../remote_data_register/remote_data_register.dart';

class RepositoryRegisterImp implements RepositoryRegister {
  final RemoteDataRegisterImp remoteDataRegisterImp;
  final NetworkInfoImpl networkInfoImpl;

  RepositoryRegisterImp(
      {required this.remoteDataRegisterImp, required this.networkInfoImpl});

  @override
  Future<UserModel> addUser(
      {required name,
      required email,
      required phone,
      required nationalId,
      required token,
      required passWord,
      required userImage}) async {
    try {
      if (await networkInfoImpl.isConnected) {
        var userRegister = await remoteDataRegisterImp.addUserRegisterRemote(
          email: email,
          phone: phone,
          nationalId: nationalId,
          password: passWord,
          userImage: userImage,
          name: name,
          token: token,
        );
        return userRegister;
      } else {
        return Future.error(ServerFailure());
      }
    } catch (error) {
      return Future.error(" ERROR REGISTER ${error.toString()}");
    }
  }
}
