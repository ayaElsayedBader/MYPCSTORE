import 'package:flutter/material.dart';

import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../logic/register_cubit/register_cubit.dart';
import 'image_profile.dart';

class RowCreateAccount extends StatelessWidget {
  const RowCreateAccount({super.key, required this.registerCubit});

  final RegisterCubit registerCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(StringApp.createAccount,
            style: StyleApp.style24we700blue.copyWith(
              color: ColorApp.indigo,
            )),
        const SizedBox(
          width: SizeApp.size40,
        ),
        registerCubit.image == null
            ? MaterialButton(
                onPressed: () {
                  registerCubit.addImage();
                },
                child: const ImageProfile())
            : Container(
                height: SizeApp.size50,
                width: SizeApp.size50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: FileImage(registerCubit.image!),
                    fit: BoxFit.fill,
                  ),
                )),
      ],
    );
  }
}
