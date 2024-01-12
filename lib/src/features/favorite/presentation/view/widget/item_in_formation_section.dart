import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import 'build_column_name_description.dart';
import 'build_row_price_icon_remove.dart';

class ItemInformationSection extends StatelessWidget {
  const ItemInformationSection({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: SizeApp.size3.toInt(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeApp.size10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildColumnNameDescription(
              lapHomeModel: lapHomeModel,
            ),
            SizeApp.sizeB8,
            BuildRowPriceIconRemove(
              lapHomeModel: lapHomeModel,
            )
          ],
        ),
      ),
    );
  }
}
