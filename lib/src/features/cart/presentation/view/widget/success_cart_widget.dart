import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../domain/model/cart_model.dart';

import '../../logic/cart_cubit/cart_cubit.dart';
import 'build_success_widget_cart.dart';

class WidgetSuccessCart extends StatelessWidget {
  const WidgetSuccessCart({super.key, required this.listCart, required this.cartCubit});
 final  CartCubit cartCubit;
  final List<CartModel> listCart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.size600,
      child: ListView.builder(
        itemCount: listCart.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return BuildSuccessWidgetCart(
            cartModel: listCart[index], cartCubit: cartCubit,
          );
        },
      ),
    );
  }
}
