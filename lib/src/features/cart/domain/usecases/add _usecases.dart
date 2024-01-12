import '../repository/repository.dart';

class AddCartUseCase {
  final RepositoryCart repoCart;

  AddCartUseCase({required this.repoCart});

  Future<void> addCart(productId) async {
    return await repoCart.addCart(productId);
  }
}
