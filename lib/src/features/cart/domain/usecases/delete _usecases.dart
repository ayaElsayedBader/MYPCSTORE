
import '../repository/repository.dart';

class DeleteCartUseCase {
  final RepositoryCart  repoCart;

  DeleteCartUseCase({required this.repoCart});

  Future<void> delete(productId) async {
    return await repoCart.delete(productId);
  }
}
