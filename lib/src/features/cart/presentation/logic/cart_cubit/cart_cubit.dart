import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/manger/string_app.dart';
import '../../../domain/usecases/add _usecases.dart';
import '../../../domain/usecases/delete _usecases.dart';
import '../../../domain/usecases/get_usecases.dart';
import '../../../domain/usecases/updata_usecases.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(
      {required this.upDATACArtUseCase,
      required this.deleteUseCase,
      required this.useCaseCart,
      required this.useCaseAdd})
      : super(CartInitial());
  final GetCartUseCase useCaseCart;
  final AddCartUseCase useCaseAdd;
  final DeleteCartUseCase deleteUseCase;
  final UpDATACArtUseCase upDATACArtUseCase;
  bool isUpData = false;

  getAllCart() async {
    emit(CartLoading());
    var response = await useCaseCart.call();

    response.fold((failure) {
      if (kDebugMode) {
        print("${StringApp.errorCart} ${failure.toString()}");
      }
      emit(CartFailure(errorMessage: failure.toString()));
    }, (cart) {
      emit(CartSuccess(cartModel: cart));
    });
  }

  addCart(productId) async {
    var response = await useCaseAdd.addCart(productId);
    emit(CarAddSuccess());
    getAllCart();
    return response;
  }

  deleteCart(productId) async {
    var response = await deleteUseCase.delete(productId);
    emit(CartDelete());
    getAllCart();
    return response;
  }

  upDataCart({required quantity, required productId}) async {
    emit(UpDataLoading());
    try {
      var cartModel = await upDATACArtUseCase.upDataCart(quantity, productId);

      emit(UpDataSuccess(cartModel: cartModel));
      getAllCart();
      return cartModel;
    } catch (error) {
      emit(UpDataFailure(errorMessage: error.toString()));
    }
  }

  upDataValue() {
    isUpData = true;
    getAllCart();
    emit(UpDataValue());
  }

  saveUpData() {
    isUpData = false;
    getAllCart();
    emit(UpDataSave());
  }
}
