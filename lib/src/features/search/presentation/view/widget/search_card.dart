import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';

class SearchLapCard extends StatelessWidget {
  final LapItemsModel lapHomeModel;

  const SearchLapCard({super.key, required this.lapHomeModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      //  color:  Colors.green,
      height: SizeApp.size155,
      child: Card(
        elevation: SizeApp.size10,
        child: Row(
          children: [
            Expanded(
              flex: SizeApp.size2.toInt(),
              child: CachedNetworkImage(
                imageUrl: lapHomeModel.image,
                height: SizeApp.size120,
              ),
            ),
            Expanded(
              flex: SizeApp.size3.toInt(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: SizeApp.size10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(lapHomeModel.name,
                        style: StyleApp.style18we600black
                            .copyWith(color: ColorApp.turquoiseBlue)),
                    SizeApp.sizeB8,
                    Text(
                      lapHomeModel.description,
                      style: const TextStyle(color: Colors.black),
                      maxLines: SizeApp.size3.toInt(),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizeApp.sizeB8,
                    Row(
                      children: [
                        Text('\$${lapHomeModel.price}',
                            style: StyleApp.style24we700blue
                                .copyWith(color: ColorApp.limeGreen)),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
