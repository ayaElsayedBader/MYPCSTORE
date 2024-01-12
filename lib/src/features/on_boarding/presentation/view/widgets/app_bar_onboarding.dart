import 'package:flutter/material.dart';

import '../../../../../config/theme_cubit/theme_cubit.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';

AppBar appBarOnBoarding({required ThemeCubit themeCubit}) {
  return AppBar(
      leadingWidth: SizeApp.size400,
      elevation: SizeApp.size0,
      backgroundColor:
          themeCubit.isDarkTheme ? ColorApp.kWhite : ColorApp.kBlack,
      leading: Row(
        children: [
          themeCubit.isDarkTheme
              ? const Icon(
                  Icons.light_mode,
                  color: ColorApp.gold,
                )
              : const Icon(Icons.dark_mode),
          const Spacer(),
          Switch(
              onChanged: (val) {
                themeCubit.setTheme(isDark: val);
              },
              value: themeCubit.isDarkTheme),
        ],
      ));
}
