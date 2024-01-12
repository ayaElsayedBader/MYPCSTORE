import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../register/entities/model/register_model.dart';
import '../repo/repo.dart';

class UseCaseLogin {
  final RepoLogin repo;

  UseCaseLogin({required this.repo});

  Future<Either<Failure, UserModel>> call(
      dynamic email, dynamic passWord) async {
    return await repo.login(email, passWord);
  }
}
