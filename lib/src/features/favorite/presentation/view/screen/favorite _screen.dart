import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import '../../logic/fav_cubit/favorite _cubit.dart';
import '../widget/app_bar_favorite.dart';
import '../widget/favorite_product_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.kWhite,

      appBar: appBarFavorite(context),
      body: BlocBuilder<FavoriteCubit, List<LapItemsModel>>(
        builder: (context, favorites) {
          if (favorites.isEmpty) {
            return const Center(
              child: Text(StringApp.noFavorite),
            );
          }

          return ListView.builder(
            itemCount: favorites.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var favorite = favorites[index];
              return FavoriteLapCard(lapHomeModel: favorite);
            },
          );
        },
      ),
    );
  }
}
