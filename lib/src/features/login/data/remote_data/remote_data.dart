import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/end_point.dart';
import '../../../../core/api/status_codes.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../register/domain/entities/model/register_model.dart';

abstract class LoginData {
  Future<Either<Failure, UserModel>> login(email, password);
}

class LoginDataImp implements LoginData {
  final Dio dio = Dio();

  @override
  Future<Either<Failure, UserModel>> login(email, password) async {
    try {
      var response = await dio.post(EndPoints.userLogin, data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == StatusCodes.ok) {
        var data = response.data;
        var userLogin = UserModel.fromJson(data);
        return right(userLogin);
      } else {
        throw ServerFailure();
      }
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
