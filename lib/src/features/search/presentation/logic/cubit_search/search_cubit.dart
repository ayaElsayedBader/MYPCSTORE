import 'package:bloc/bloc.dart';

import '../../../../home_lap/domain/entities/models/product_model.dart';

class SearchCubit extends Cubit<List<LapItemsModel>> {
  SearchCubit() : super([]);

  void searchProducts(String query) {
    // Use the 'where' method to filter the products based on the query
    List<LapItemsModel> filteredProducts = state
        .where((product) => product.name.toLowerCase().contains(query))
        .toList();

    // Emit the filtered list to update the state
    emit(filteredProducts);
  }
}
