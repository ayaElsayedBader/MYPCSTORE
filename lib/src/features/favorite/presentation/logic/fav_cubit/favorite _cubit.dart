import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home_lap/domain/entities/models/product_model.dart';

class FavoriteCubit extends Cubit<List<LapItemsModel>> {
  FavoriteCubit() : super([]);

  FavoriteCubit get(context) => BlocProvider.of(context);

  void addToFavorites(LapItemsModel favorite) {
    state.add(favorite);
    emit(List.from(state));
  }

  void removeFromFavorites(String id) {
    state.removeWhere((favorite) => favorite.id == id);
    emit(List.from(state));
  }
}
