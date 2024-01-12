import 'package:flutter/material.dart';

import '../../../../../core/manger/list_drawer.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import 'build_widget_drawer.dart';

class ListViewItemsDrawer extends StatelessWidget {
  const ListViewItemsDrawer({super.key, required this.lapItemsModelList});

  final List<LapItemsModel> lapItemsModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return BuildWidgetDrawer(
            drawerModel: listDrawer(context, lapItemsModelList)[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: SizeApp.size50,
        );
      },
      itemCount: listDrawer(context, lapItemsModelList).length,
    );
  }
}
