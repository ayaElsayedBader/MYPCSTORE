import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../favorite/presentation/logic/fav_cubit/favorite _cubit.dart';
import '../../../../favorite/presentation/view/screen/favorite _screen.dart';
import '../../../domain/entities/models/product_model.dart';

class ButtonFavorite extends StatelessWidget {
  const ButtonFavorite({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          BlocProvider.of<FavoriteCubit>(context).addToFavorites(lapHomeModel);

          context.push(const FavoriteScreen());
        },
        child: const Icon(
          Icons.favorite,
          color: Colors.red,
        ));
  }
}
