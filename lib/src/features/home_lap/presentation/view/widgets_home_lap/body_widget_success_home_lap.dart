import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../domain/entities/models/product_model.dart';
import 'build_success_lap_home_widget.dart';

class BodyWidgetSuccessHomeLap extends StatelessWidget {
  const BodyWidgetSuccessHomeLap({super.key, required this.lapItemsModelList});

  final List<LapItemsModel> lapItemsModelList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: SizeApp.size20,
            ),
            ListView.separated(
              itemCount: lapItemsModelList.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return BuildLapHomeWidgetSuccess(
                  lapHomeModel: lapItemsModelList[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: SizeApp.size15,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
