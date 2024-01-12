import 'package:flutter/material.dart';

import '../manger/size_app.dart';

ThemeData themeApp({required bool isLight}) {
  return ThemeData(
    scaffoldBackgroundColor: isLight ? Colors.white : Colors.black,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: isLight ? Colors.indigo : Colors.red,
        fontSize: SizeApp.size19,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
          fontSize: SizeApp.size16,
          color: isLight ? Colors.black : Colors.white),
    ),
  );
}
