import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import '../../logic/fav_cubit/favorite _cubit.dart';

class BuildRowPriceIconRemove extends StatelessWidget {
  const BuildRowPriceIconRemove({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$${lapHomeModel.price}', style: StyleApp.style24we700blue),
        const SizedBox(
          width: SizeApp.size50,
        ),
        IconButton(
            onPressed: () {
              BlocProvider.of<FavoriteCubit>(context)
                  .removeFromFavorites(lapHomeModel.id);
            },
            icon: const Icon(
              Icons.delete,
              color: ColorApp.red,
            ))
      ],
    );
  }
}
