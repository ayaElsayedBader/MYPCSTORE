import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/api/end_point.dart';
import '../../../../core/api/status_codes.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../../core/manger/string_app.dart';
import '../../../../core/manger/value.dart';
import '../../domain/model/cart_model.dart';

abstract class CartRemoteDataSource {
  Future<List<CartModel>> getAllCart();

  Future<void> addCart(productId);

  Future<void> delete(productId);

  Future<CartModel> upData(quantity, productId);
}

class CarRemoteDataSourceImp implements CartRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<List<CartModel>> getAllCart() async {
    try {
      dio.interceptors.add(LogInterceptor(responseBody: true));
      final response = await dio.get(EndPoints.getCart, data: {
        "nationalId": savedNationalId,
      }); // i did saved nationalId by shard pref

      if (response.statusCode == StatusCodes.ok) {
        if (response.data != null && response.data['products'] != null) {
          var data = response.data['products'];
          List<CartModel> listProduct = List.from(
            (data as List).map((item) => CartModel.fromJson(item)),
          );
          if (kDebugMode) {
            print(listProduct.length);
          }
          return listProduct;
        } else {
          // Handle the case when data or 'products' key is null
          throw Exception(StringApp.failedToLoadProducts);
        }
      } else {
        throw Exception(
            '${StringApp.failedToLoadProductsStatusCode}: ${response.statusCode}');
      }
    } catch (error) {
      if (kDebugMode) {
        print('${StringApp.failedToLoadProductsStatusCodeError}: $error');
      }

      throw Exception(
          '${StringApp.failedToLoadProductsStatusCodeError}: $error');
    }
  }

  @override
  Future<void> addCart(productId) async {
    var response = await dio.post(EndPoints.addCart, data: {
      "nationalId": savedNationalId,
      "productId": productId,
      "quantity": "1"
    });
    var data = response.data;
    if (kDebugMode) {
      print(data);
    }

    return Future.value();
  }

  @override
  Future<void> delete(productId) async {
    await dio.delete(EndPoints.deleteCart,
        data: {"nationalId": savedNationalId, "productId": productId});
    return Future.value();
  }

  @override
  Future<CartModel> upData(quantity, productId) async {
    var response = await dio.put(EndPoints.upDataCart, data: {
      "nationalId": savedNationalId,
      "productId": productId,
      "quantity": quantity,
    });

    if (response.statusCode == StatusCodes.ok) {
      var cart = response.data;
      var upDtaCart = CartModel.fromJson(cart);
      return upDtaCart;
    } else {
      throw ServerFailure(errorMessage: response.statusMessage);
    }
  }
}
