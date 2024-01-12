
import '../model/cart_model.dart';
import '../repository/repository.dart';

class UpDATACArtUseCase {
  final RepositoryCart repositoryCart;

  UpDATACArtUseCase({ required this.repositoryCart});


  Future<CartModel>  upDataCart(quantity, productId) async {
    return await repositoryCart.upData(quantity, productId);
  }
}

