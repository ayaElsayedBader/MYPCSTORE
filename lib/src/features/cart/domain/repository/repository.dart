import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../model/cart_model.dart';

abstract class RepositoryCart {

  Future<Either<Failure, List<CartModel>>> getCart();

  Future<void> addCart(productId);

  Future<void> delete(productId);

  Future<CartModel> upData(quantity, productId);
}
