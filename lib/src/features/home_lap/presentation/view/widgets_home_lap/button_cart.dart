
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../cart/presentation/logic/cart_cubit/cart_cubit.dart';
import '../../../../cart/presentation/view/screen/cart_sceen.dart';
import '../../../domain/entities/models/product_model.dart';

class ButtonCart extends StatelessWidget {
  const ButtonCart({super.key, required this.lapHomeModel});
  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return   InkWell(
        onTap: () {
          BlocProvider.of<CartCubit>(context).addCart(lapHomeModel.id);

          context.push(const CartScreen());
        },
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.blue,
        ));
  }
}
