import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';

import '../../../domain/entities/models/product_model.dart';
import 'button_cart.dart';
import 'button_favorite.dart';
import 'button_see_more.dart';

class BuildRowButtonSeeMoreFavoriteCart extends StatelessWidget {
  const BuildRowButtonSeeMoreFavoriteCart(
      {super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonSeeMore(
          lapHomeModel: lapHomeModel,
        ),
        const SizedBox(
          width: SizeApp.size50,
        ),
        ButtonFavorite(
          lapHomeModel: lapHomeModel,
        ),
        const SizedBox(
          width: SizeApp.size50,
        ),
        ButtonCart(
          lapHomeModel: lapHomeModel,
        )
      ],
    );
  }
}
