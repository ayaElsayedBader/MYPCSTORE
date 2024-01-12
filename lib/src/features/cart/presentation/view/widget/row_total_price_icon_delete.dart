
import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../domain/model/cart_model.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class RowTotalPriceIconRemove extends StatelessWidget {
  const RowTotalPriceIconRemove(
      {super.key, required this.cartCubit, required this.cartModel});

  final CartCubit cartCubit;
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${StringApp.totalPrice}: ${cartModel.totalPrice.toInt()}",
          style: TextStyle(color: Colors.grey[600]),
        ),
        IconButton(
          onPressed: () {
            cartCubit.deleteCart(cartModel.id);
          },
          icon: const Icon(Icons.remove_shopping_cart_outlined,
              color: ColorApp.red),
        ),
      ],
    );
  }
}
