import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';

class BuildColumnNameDescription extends StatelessWidget {
  const BuildColumnNameDescription({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lapHomeModel.name, style: StyleApp.style18WeBoldBlack),
        SizeApp.sizeB8,
        Text(
          lapHomeModel.description,
          maxLines: SizeApp.size3.toInt(),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
