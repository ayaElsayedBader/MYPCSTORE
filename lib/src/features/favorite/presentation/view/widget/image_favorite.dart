
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
   class ImageFavorite extends StatelessWidget {
     const ImageFavorite({super.key, required this.lapHomeModel});
     final LapItemsModel lapHomeModel;

     @override
     Widget build(BuildContext context) {
       return  Expanded(
         flex: SizeApp.size2.toInt(),
         child: CachedNetworkImage(
           imageUrl: lapHomeModel.image,
           height: SizeApp.size120,
         ),
       );
     }
   }
