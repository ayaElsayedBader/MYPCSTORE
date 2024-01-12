import 'package:flutter/material.dart';

import '../../../../core/manger/size_app.dart';
import '../../../home_lap/domain/entities/models/product_model.dart';
import 'gallery_image_see_more.dart';

class StackImageSeeMore extends StatelessWidget {
  const StackImageSeeMore({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          lapHomeModel.image,
          height: SizeApp.size200,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        SizedBox(
            height: SizeApp.size150,
            width: double.infinity,
            child: GalleryImageSeeMore(
              lapHomeModel: lapHomeModel,
            ))
      ],
    );
  }
}
