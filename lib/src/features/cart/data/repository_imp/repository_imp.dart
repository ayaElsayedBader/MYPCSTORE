import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../../core/network/network_info_impl.dart';
import '../../domain/model/cart_model.dart';
import '../../domain/repository/repository.dart';
import '../remote_data_cart/remote_data_cart.dart';

class RepositoryCartImp implements RepositoryCart {
  final CarRemoteDataSourceImp carRemoteDataSourceImp;
  final NetworkInfoImpl networkInfoImpl;

  RepositoryCartImp(
      {required this.carRemoteDataSourceImp, required this.networkInfoImpl});

  @override
  Future<Either<Failure, List<CartModel>>> getCart() async {
    try {
      if (await networkInfoImpl.isConnected) {
        var response = await carRemoteDataSourceImp.getAllCart();
        return right(response);
      } else {
        return left(ServerFailure());
      }
    } catch (error) {
      return left(ServerFailure(errorMessage: error.toString()));
    }
  }

  @override
  Future<void> addCart(productId) async {
    if (await networkInfoImpl.isConnected) {
      var response = await carRemoteDataSourceImp.addCart(productId);
      return response;
    }
  }

  @override
  Future<void> delete(productId) async {
    if (await networkInfoImpl.isConnected) {
      var response = await carRemoteDataSourceImp.delete(productId);
      return response;
    }
  }

  @override
  Future<CartModel> upData(quantity, productId) async {
    if (await networkInfoImpl.isConnected) {
      var response = await carRemoteDataSourceImp.upData(quantity, productId);
      return response;
    }  else{
      throw ServerFailure( );
    }
  }
}
