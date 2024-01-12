import 'package:flutter/material.dart';
import '../../../../drawer_home_lap/presentation/view/screen/drawer_home_lap.dart';
import '../../../domain/entities/models/product_model.dart';
import 'app_bar_widget.dart';
import 'body_widget_success_home_lap.dart';
import 'floatingActionButton.dart';

class SuccessLapWidget extends StatelessWidget {
  const SuccessLapWidget({
    super.key,
    required this.lapItemsModelList,
  });

  final List<LapItemsModel> lapItemsModelList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButtonHomeLap(context),
      drawer: DrawerHomeLap(drawerItemsModelList: lapItemsModelList),
      appBar: appBarWidgetHome(
        lapHomeModelList: lapItemsModelList,context
      ),
      body: BodyWidgetSuccessHomeLap(
        lapItemsModelList: lapItemsModelList,
      ),
    );
  }
}
