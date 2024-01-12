import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';



AppBar appBarLogin() {
  return AppBar(
    leading: const SizedBox(),
    backgroundColor: ColorApp.kWhite,
    centerTitle: true,
    elevation: SizeApp.size0,
    title: Text(
      StringApp.titleLogin,
      style: StyleApp.style24we700blue.copyWith(color:ColorApp.indigo,),
    ),
  );
}
