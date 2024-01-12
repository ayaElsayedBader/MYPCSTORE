import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

AppBar appBarFavorite(BuildContext context) {
  return AppBar(

      leading: IconButton(

          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorApp.red,

          ),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      backgroundColor: Colors.white,
      elevation: SizeApp.size0,
      centerTitle: true,
      title: Text(StringApp.favoriteItems, style: StyleApp.style30WeNormalRed));
}
