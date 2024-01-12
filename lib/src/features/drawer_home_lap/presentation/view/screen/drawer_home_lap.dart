import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';

import '../../../../home_lap/domain/entities/models/product_model.dart';
import '../widget_drawer_home_lap/list_view_items_drawer.dart';
import '../widget_drawer_home_lap/profile_drawer.dart';

class DrawerHomeLap extends StatelessWidget {
  const DrawerHomeLap({
    super.key,
    required this.drawerItemsModelList,
  });

  final List<LapItemsModel> drawerItemsModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SizeApp.size600,
        child: Drawer(
            elevation: SizeApp.size20,
            width: SizeApp.size300,
            clipBehavior: Clip.antiAlias,
            backgroundColor: Colors.transparent,
            child: Column(
              children: [
                const ProfileInDrawerHomeLap(),
                ListViewItemsDrawer(
                  lapItemsModelList: drawerItemsModelList,
                ),
              ],
            )));
  }
}
