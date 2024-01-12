import 'package:flutter/material.dart';
import '../../../../../core/manger/color_app.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/text_style.dart';
import '../../../../edit_profile/presentation/view/widget/container_edit_details_profile.dart';
import '../../../../edit_profile/presentation/view/widget/custom _TextField_edit.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class BuildUpDataQuantity extends StatelessWidget {
  const BuildUpDataQuantity(
      {super.key,
      required this.controller,
      required this.cartCubit,
      required this.text,
      required this.isEditing,
      required this.onPressed,
      required this.textInputTyp,
      required this.hintText});

  final String text;
  final TextEditingController controller;
  final CartCubit cartCubit;
  final bool isEditing;
  final void Function()? onPressed;

  final TextInputType textInputTyp;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ContainerEditDetailsProfile(
      child: Row(
        children: [
          isEditing
              ? Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomTextFieldEditProfile(
                      onChanged: (val) {
                        val = controller.text;
                      },
                      controller: controller,
                      textInputType: textInputTyp,
                      hintText: hintText,
                    ),
                  ),
                )
              : Text(
                  text,
                  style: StyleApp.style24we700blue
                      .copyWith(fontSize: SizeApp.size18),
                ),
          const SizedBox(
            width: SizeApp.size10,
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.edit,
                color: ColorApp.kBlue,
              ))
        ],
      ),
    );
  }
}
