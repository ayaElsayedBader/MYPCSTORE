import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../domain/model/cart_model.dart';

class BuildColumnTextCartCategoryNamePrice extends StatelessWidget {
  const BuildColumnTextCartCategoryNamePrice(
      {super.key, required this.cartModel});

  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(cartModel.category, style: StyleApp.style12grey),
        const SizedBox(height: SizeApp.size10),
        Text(
          cartModel.name,
          style: StyleApp.style20WeBold,
        ),
        SizeApp.sizeB8,
        Text(
          " ${StringApp.price} \$${cartModel.price}",
          style: TextStyle(
            fontSize: SizeApp.size18,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
