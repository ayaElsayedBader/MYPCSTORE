import 'package:flutter/material.dart';
import 'package:pc/src/features/cart/presentation/view/widget/row_total_price_icon_delete.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../domain/model/cart_model.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class RowQunTotalIconRemove extends StatelessWidget {
  RowQunTotalIconRemove(
      {super.key, required this.cartModel, required this.cartCubit});

  final TextEditingController _quantityController = TextEditingController();
  final CartModel cartModel;
  final CartCubit cartCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        cartCubit.isUpData
            ? Expanded(
                child: TextField(
                  controller: _quantityController,
                  keyboardType: TextInputType.number,
                  decoration:
                      const InputDecoration(labelText: StringApp.enterQuantity),
                ),
              )
            : Text(
                "${StringApp.quantity} ${cartModel.quantity.toInt()}",
                style: StyleApp.style16WeBoldGrey,
              ),
        const SizedBox(width: SizeApp.size10),
        cartCubit.isUpData
            ? IconButton(
                onPressed: () async {
                  await cartCubit.upDataCart(
                    quantity: double.parse(_quantityController.text),
                    productId: cartModel.id,
                  );
                  cartCubit.saveUpData();
                  //with cubit
                },
                icon: const Icon(Icons.save_alt, color: ColorApp.indigo),
              )
            : IconButton(
                onPressed: () {
                  cartCubit.upDataValue();
                },
                icon: const Icon(Icons.edit, color: ColorApp.kBlue),
              ),
        RowTotalPriceIconRemove(
          cartCubit: cartCubit,
          cartModel: cartModel,
        )
      ],
    );
  }
}
