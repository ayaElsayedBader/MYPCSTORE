
import '../../../../home_lap/domain/entities/models/product_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchSuccess extends SearchState {
  final List<LapItemsModel> modelLap;

  SearchSuccess(this.modelLap);
}

class SearchFailure extends SearchState {}
