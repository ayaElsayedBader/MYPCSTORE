import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../models/product_model.dart';

abstract class RepoLapHome {
  Future<Either<Failure, List<LapItemsModel>>> getAllLapHome();
}
