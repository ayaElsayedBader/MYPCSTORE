import 'package:gallery_image_viewer/gallery_image_viewer.dart';
import 'package:flutter/material.dart';

import '../../../home_lap/domain/entities/models/product_model.dart';
class GalleryImageSeeMore extends StatelessWidget {
 const GalleryImageSeeMore({super.key, required this.lapHomeModel});
   final  LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    final List< String> images = lapHomeModel.images;
    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return    GalleryImageView(
       listImage: [
         NetworkImage(images[ index])]);
          },
        );
     
  }
}


