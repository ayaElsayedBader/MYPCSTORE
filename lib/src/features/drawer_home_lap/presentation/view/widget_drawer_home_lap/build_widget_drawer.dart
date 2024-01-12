import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/drawer_model.dart';

class BuildWidgetDrawer extends StatelessWidget {
  const BuildWidgetDrawer({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(SizeApp.size50)),
      child: ListTile(
        title: Text(
          drawerModel.text,
          style: const TextStyle(color: ColorApp.kWhite),
        ),
        trailing: IconButton(
          onPressed: drawerModel.onPressed,
          icon: drawerModel.icon,
          color: Colors.red,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
