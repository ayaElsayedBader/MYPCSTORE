import 'package:flutter/material.dart';

import '../../../../core/manger/size_app.dart';
import '../../../../core/manger/string_app.dart';
import '../../../../core/manger/text_style.dart';
import '../../../home_lap/domain/entities/models/product_model.dart';


class ColumnTextSeeMore extends StatelessWidget {
  const ColumnTextSeeMore({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lapHomeModel.name, style: StyleApp.style24we700blue),
        SizeApp.sizeB8,
        Text(
          lapHomeModel.description,
          style: const TextStyle(fontSize: SizeApp.size20),
        ),
        SizeApp.sizeB8,
        SelectableText(" ${StringApp.price}  \$${lapHomeModel.price.toString()}",
            style: StyleApp.style16we600White.copyWith(color: Colors.teal)),
        SizeApp.sizeB8,
        Text(
          "${ StringApp.countInStock} : ${lapHomeModel.countInStock.toString()}",
          style: StyleApp.style16we600White.copyWith(color: Colors.blue),
        ),
        SizeApp.sizeB8,
        Text(
          " ${ StringApp.sales} : ${lapHomeModel.sales.toString()}",
          style: StyleApp.style16we600White.copyWith(color: Colors.red),
        ),
        SizeApp.sizeB8,
        Text(" ${ StringApp.company}: ${lapHomeModel.company}",
            style: StyleApp.style18we600black),
      ],
    );
  }
}
