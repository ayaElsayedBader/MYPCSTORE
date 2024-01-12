
import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context,
      required    Widget widget,
      required Color color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content:widget,
    backgroundColor: color,
  ));
}
