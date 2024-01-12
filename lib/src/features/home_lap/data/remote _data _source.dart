import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pc/src/core/api/end_point.dart';
import 'package:pc/src/core/api/status_codes.dart';
import 'package:pc/src/core/manger/string_app.dart';

import '../domain/entities/models/product_model.dart';

abstract class RemoteDataLapHomeSource {
  Future<List<LapItemsModel>> getAllLapHome();
}

class RemoteDataSourceLapHomeImp implements RemoteDataLapHomeSource {
  final Dio _dio = Dio();

  @override
  Future<List<LapItemsModel>> getAllLapHome() async {
    try {
      _dio.interceptors.add(LogInterceptor(responseBody: true));
      final response = await _dio.get(EndPoints.getAllLap,
          options: Options(
              sendTimeout: const Duration(seconds: 20),
              receiveDataWhenStatusError: true));

      if (response.statusCode == StatusCodes.ok) {
        if (response.data != null && response.data['product'] != null) {
          var data = response.data['product'];
          List<LapItemsModel> listProduct = List.from(
            (data as List).map((item) => LapItemsModel.fromJson(item)),
          );
          if (kDebugMode) {
            print(" ${listProduct.length}");
          }
          return listProduct;
        } else {
          // Handle the case when data or 'products' key is null
          throw Exception(StringApp.failedProduct);
        }
      } else {
        throw Exception(
            '${StringApp.failedToLoadProductsStatusCodeError}: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception(' ${StringApp.failedProduct}: $error');
    }
  }
}
