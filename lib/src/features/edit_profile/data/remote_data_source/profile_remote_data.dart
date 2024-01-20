import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/api/end_point.dart';
import '../../../../core/errors/server_failure.dart';

import '../../../../core/manger/value.dart';
import '../../../register/domain/entities/model/register_model.dart';

abstract class ProfileRemoteData {
  Future<UserModel> profile();

  Future<UserModel> upData({required name, required phone, required email});
}

@override
class ProfileRemoteDataImp implements ProfileRemoteData {
  final Dio dio = Dio();

  @override
  Future<UserModel> profile() async {
    try {
      dio.interceptors.add(LogInterceptor(responseBody: true));

      var response = await dio.post(EndPoints.profile, data: {
        "token":newToken
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = response.data;
        var user = UserModel.fromJson(data);

        return user;
      } else {
        if (kDebugMode) {
          print('Error ${response.statusCode}: ${response.statusMessage}');
        }
        return Future.error(
            ServerFailure(errorMessage: '${response.statusMessage}'));
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return Future.error(ServerFailure(errorMessage: '$error'));
    }
  }

  @override
  Future<UserModel> upData(
      {required name, required phone, required email}) async {
    try {
      dio.interceptors.add(LogInterceptor(responseBody: true));
      var response = await dio.put(EndPoints.upDataProfile, data: {
        "name": name,
        "email": email,
        "phone": phone,
        "gender": "female",
        "password": "aya2024aa",
        "token":newToken,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = response.data;
        var user = UserModel.fromJson(data);
        return user;
      } else {
        if (kDebugMode) {
          print('Error ${response.statusCode}: ${response.statusMessage}');
        }
        return Future.error(
            ServerFailure(errorMessage: '${response.statusMessage}'));
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return Future.error(ServerFailure(errorMessage: '$error'));
    }
  }
}
