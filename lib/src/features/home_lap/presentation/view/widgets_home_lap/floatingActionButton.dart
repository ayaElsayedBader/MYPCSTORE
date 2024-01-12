import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../cart/presentation/view/screen/cart_sceen.dart';

FloatingActionButton floatingActionButtonHomeLap(BuildContext context) {
  return FloatingActionButton(
    backgroundColor: ColorApp.indigo,
    child: const Icon(Icons.shopping_cart_outlined, color: ColorApp.kWhite),
    onPressed: () {
      context.push(const CartScreen());
    },
  );
}
