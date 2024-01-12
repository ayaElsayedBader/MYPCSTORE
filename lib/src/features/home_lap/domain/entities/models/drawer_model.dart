import 'package:flutter/material.dart';

class DrawerModel {
  final String text;
  final Icon icon;

  final Function()? onPressed;

  DrawerModel({required this.text, required this.icon, this.onPressed});
}
