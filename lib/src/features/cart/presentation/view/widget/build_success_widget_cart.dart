import 'package:flutter/material.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../domain/model/cart_model.dart';
import '../../logic/cart_cubit/cart_cubit.dart';
import 'build_column_text_cart_category_name_price.dart';
import 'build_image_cart.dart';
import 'build_row_cart_quantity_total_price_icon_remove.dart';

class BuildSuccessWidgetCart extends StatelessWidget {
  const BuildSuccessWidgetCart(
      {super.key, required this.cartModel, required this.cartCubit});

  final CartModel cartModel;
  final CartCubit cartCubit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: SizeApp.size6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildImageCart(
            cartModel: cartModel,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                SizeApp.size16, SizeApp.size16, SizeApp.size16, SizeApp.size0),
            child: BuildColumnTextCartCategoryNamePrice(
              cartModel: cartModel,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(SizeApp.size10),
              child: RowQunTotalIconRemove(
                cartModel: cartModel,
                cartCubit: cartCubit,
              )),
        ],
      ),
    );
  }
}
