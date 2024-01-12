import 'package:dartz/dartz.dart';
import 'package:pc/src/features/home_lap/data/remote%20_data%20_source.dart';

import '../../../core/errors/failure.dart';
import '../../../core/errors/server_failure.dart';
import '../../../core/network/network_info_impl.dart';
import '../domain/entities/models/product_model.dart';
import '../domain/entities/repository/repository.dart';

class RepoLapHomeImp implements RepoLapHome {
  final RemoteDataSourceLapHomeImp remoteDataSource;
  final NetworkInfoImpl networkInfoImpl;

  RepoLapHomeImp({
    required this.remoteDataSource,
    required this.networkInfoImpl,
  });

  @override
  Future<Either<Failure, List<LapItemsModel>>> getAllLapHome() async {
    try {
      if (await networkInfoImpl.isConnected) {
        var product = await remoteDataSource.getAllLapHome();

        return Right(product);
      } else {
        return left(ServerFailure());
      }
    } catch (error) {
      return Left(ServerFailure(errorMessage: error.toString()));
    }
  }
//
}
