
import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
  class ImageOnboarding extends StatelessWidget {
   const  ImageOnboarding({super.key,  required this.image});
   final  String image;
    @override
    Widget build(BuildContext context) {
      return  Container(
        width:  SizeApp.size400,
        height: SizeApp.size300,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
             image
            ),
          ),
        ),
      );
    }
  }
