

   import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../../core/manger/string_app.dart';
import '../../../../core/network/network_info_impl.dart';
import '../../../register/domain/entities/model/register_model.dart';
import '../../domain/repo/repo.dart';
import '../remote_data/remote_data.dart';

class  RepoLoginImp  implements RepoLogin {
  final LoginDataImp loginDataImp;
  final NetworkInfoImpl infoImpl;

  RepoLoginImp( {    required this.loginDataImp, required this.infoImpl});

  @override
  Future<Either<Failure, UserModel>> login(email, passWord)  async{
    if( await  infoImpl.isConnected){

      var  response= await loginDataImp.login(email, passWord);
      return response;
    } else{
      return left ( ServerFailure( errorMessage: StringApp.noInternet)) ;
    }


  }

}