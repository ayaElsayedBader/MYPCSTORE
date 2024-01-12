import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import 'build_column_name_description.dart';
import 'build_row_price_icon_remove.dart';
import 'image_favorite.dart';
import 'item_in_formation_section.dart';

class FavoriteLapCard extends StatelessWidget {
  final LapItemsModel lapHomeModel;

  const FavoriteLapCard({super.key, required this.lapHomeModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      //  color:  Colors.green,
      height: SizeApp.size200,
      child: Card(
        elevation: SizeApp.size10,
        child: Row(
          children: [
            ImageFavorite(
              lapHomeModel: lapHomeModel,
            ),
            ItemInformationSection(
              lapHomeModel: lapHomeModel,
            )
          ],
        ),
      ),
    );
  }
}
