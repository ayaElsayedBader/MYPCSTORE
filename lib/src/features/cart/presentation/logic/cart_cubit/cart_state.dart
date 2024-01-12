import '../../../domain/model/cart_model.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartFailure extends CartState {
  final String errorMessage;

  CartFailure({required this.errorMessage});
}

class CartSuccess extends CartState {
  final List<CartModel> cartModel;

  CartSuccess({required this.cartModel});
}

class CartLoading extends CartState {}

class CarAddSuccess extends CartState {}

class CarAddFailure extends CartState {
  final String errorMessage;

  CarAddFailure({required this.errorMessage});
}

class CarAddLoading extends CartState {}

class CartDelete extends CartState {}

class UpDataSuccess extends CartState {
  final CartModel cartModel;

  UpDataSuccess({required this.cartModel});
}

class UpDataFailure extends CartState {
  final String errorMessage;

  UpDataFailure({required this.errorMessage});
}

class UpDataLoading extends CartState {}

class UpDataValue extends CartState {}

class UpDataSave extends CartState {}
