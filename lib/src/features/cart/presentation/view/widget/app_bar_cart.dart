import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';

AppBar appBarCart(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.grey[200],
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: ColorApp.indigo,
        ),
      ),
      centerTitle: true,
      title: Text(StringApp.cart, style: StyleApp.style24WeBoldIndigo));
}
