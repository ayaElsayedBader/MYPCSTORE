import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_widget.dart';
import '../../logic/cart_cubit/cart_cubit.dart';
import '../../logic/cart_cubit/cart_state.dart';
import '../widget/app_bar_cart.dart';
import '../widget/success_cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCart(context),
      body: BlocConsumer<CartCubit, CartState>(
          listener: (context, state) {},
          builder: (context, state) {
            CartCubit cartCubit = BlocProvider.of(context);
            if (state is CartSuccess) {
              return WidgetSuccessCart(
                listCart: state.cartModel,
                cartCubit: cartCubit,
              );
            } else if (state is CartFailure) {
              return Center(
                child: Text(state.errorMessage.toString()),
              );
            } else {
              return const LoadingWidget();
            }
          }),
    );
  }
}
