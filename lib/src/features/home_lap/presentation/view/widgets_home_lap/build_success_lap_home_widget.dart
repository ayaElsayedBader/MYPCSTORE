import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';

import '../../../domain/entities/models/product_model.dart';
import 'build_column_text.dart';
import 'image_home_lap.dart';
import 'row_button_seeMore_favorite_cart.dart';

class BuildLapHomeWidgetSuccess extends StatelessWidget {
  const BuildLapHomeWidgetSuccess({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: SizeApp.size4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeApp.size65),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageHomeLap ( lapHomeModel: lapHomeModel, ),
              Padding(
                padding: const EdgeInsets.all(SizeApp.size12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildColumnTextWidgetHomeLap(
                      lapHomeModel: lapHomeModel,
                    ),
                    SizeApp.sizeB8,
                    BuildRowButtonSeeMoreFavoriteCart(
                      lapHomeModel: lapHomeModel,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
