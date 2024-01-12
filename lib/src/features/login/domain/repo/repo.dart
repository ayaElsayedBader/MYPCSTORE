import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../register/entities/model/register_model.dart';

abstract class RepoLogin {
  Future<Either<Failure, UserModel>> login(dynamic email, dynamic passWord);
}
