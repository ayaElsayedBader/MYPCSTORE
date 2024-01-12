
import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../see_more/presentation/view/screen/see_more_screen.dart';
import '../../../domain/entities/models/product_model.dart';

  class ButtonSeeMore extends StatelessWidget {
    const ButtonSeeMore({super.key,required this.lapHomeModel});
    final LapItemsModel lapHomeModel;

    @override
    Widget build(BuildContext context) {
      return  MaterialButton(
          onPressed: () {
            context.push(SeeMoreScreen(lapHomeModel: lapHomeModel));
          },
          child: Text(
            StringApp.seeAll,
            style:
            StyleApp.style24we700blue.copyWith(fontSize: SizeApp.size14),
          ));
    }
  }
