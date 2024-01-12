import 'package:flutter/material.dart';

import '../manger/color_app.dart';
import '../manger/size_app.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      required this.type,
      this.validator,
      required this.controller,
      required this.textInputType});

  final String type;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: SizeApp.size10),
        height: SizeApp.size60,
        decoration: BoxDecoration(
          border: Border.all(color: ColorApp.kBlack),
          borderRadius: BorderRadius.circular(SizeApp.size20),
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: textInputType,
          decoration: InputDecoration(hintText: type, border: InputBorder.none),
        ),
      ),
    );
  }
}
