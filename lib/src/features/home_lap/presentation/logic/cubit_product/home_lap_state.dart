

import '../../../domain/entities/models/product_model.dart';

abstract class LapHomeState {}

class LapHomeInitial extends LapHomeState {}

class LapHomeFailureState extends LapHomeState {
  final String errorMessage;

  LapHomeFailureState( { required this.errorMessage});
}

class LapHomeSuccessState extends LapHomeState {
  final List<LapItemsModel> lap;

  LapHomeSuccessState({required this.lap});
}

class LapHomeLoadingState extends LapHomeState {}
