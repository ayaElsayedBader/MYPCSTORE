
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';
import 'package:pc/src/core/manger/string_app.dart';
import '../../features/favorite/presentation/view/screen/favorite _screen.dart';
import '../../features/home_lap/domain/entities/models/drawer_model.dart';
import '../../features/home_lap/domain/entities/models/product_model.dart';
import '../../features/search/presentation/view/screen/search.dart';

List<DrawerModel> listDrawer(
        BuildContext context, List<LapItemsModel> productList) =>
    [
      DrawerModel(
          text: StringApp.search,
          icon: const Icon(Icons.search_sharp),
          onPressed: () {
            context.push(SearchLap(
              modelLap: productList,
            ));
          }),
      DrawerModel(
          text: StringApp.fav,
          icon: const Icon(Icons.favorite),
          onPressed: () {
            context.push(const FavoriteScreen());
          }),
    ];
