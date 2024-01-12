import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';

class CustomTextFieldEditProfile extends StatelessWidget {
  const CustomTextFieldEditProfile({
    super.key,

    required this.controller,
    required this.textInputType,
    required this.onChanged,
    required this.hintText,
  });


  final TextEditingController controller;
  final TextInputType textInputType;
  final void Function(String) onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChanged,
      style:   StyleApp.style24we700blue
        .copyWith(fontSize: SizeApp.size18),
      decoration: InputDecoration(
          border: InputBorder.none, hintText: hintText),
    );
  }
}
