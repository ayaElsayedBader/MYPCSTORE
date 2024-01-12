import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../models/product_model.dart';
import '../repository/repository.dart';

class GetAllLapHomeUseCases{

  final RepoLapHome repo;

  GetAllLapHomeUseCases({required this.repo});

  Future<Either<Failure, List<LapItemsModel>>> call() async {
    return await repo.getAllLapHome();
  }
}
