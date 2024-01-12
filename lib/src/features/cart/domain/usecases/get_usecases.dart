import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../model/cart_model.dart';
import '../repository/repository.dart';

class GetCartUseCase {
  final RepositoryCart repoCart;

  GetCartUseCase({required this.repoCart});

  Future<Either<Failure, List<CartModel>>> call() async {
    return await repoCart.getCart();
  }
}
