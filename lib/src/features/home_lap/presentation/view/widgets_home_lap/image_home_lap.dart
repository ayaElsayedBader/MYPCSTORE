import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../domain/entities/models/product_model.dart';

class ImageHomeLap extends StatelessWidget {
  const ImageHomeLap({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: lapHomeModel.image,
      height: SizeApp.size200,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
