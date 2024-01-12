import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../search/presentation/view/screen/search.dart';
import '../../../domain/entities/models/product_model.dart';

AppBar appBarWidgetHome(BuildContext context,
    {required List<LapItemsModel> lapHomeModelList}) {
  return AppBar(
    elevation: SizeApp.size0,
    backgroundColor: ColorApp.kWhite,
    leadingWidth: double.infinity,
    leading: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SizeApp.size5, horizontal: SizeApp.size25),
          child: MaterialButton(
            onPressed: () {
              context.push(SearchLap(modelLap: lapHomeModelList));
            },
            child: Container(
              alignment: Alignment.bottomRight,
              height: SizeApp.size60,
              decoration: BoxDecoration(
                color: ColorApp.indigo,
                borderRadius: BorderRadius.circular(SizeApp.size20),
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: SizeApp.size10,
                  ),
                  Icon(
                    Icons.search,
                    size: SizeApp.size35,
                    color: ColorApp.kWhite,
                  ),
                  SizedBox(
                    width: SizeApp.size120,
                  ),
                  Text(
                    StringApp.search,
                    style: TextStyle(
                      color: ColorApp.kWhite,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
        // child: SearchProduct(products: productResponse)),
        ),
  );
}
