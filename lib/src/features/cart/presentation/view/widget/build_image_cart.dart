
  import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/cart_model.dart';

  class BuildImageCart extends StatelessWidget {
    const BuildImageCart({super.key, required this.cartModel});
    final CartModel cartModel;
    @override
    Widget build(BuildContext context) {
      return  AspectRatio(
        aspectRatio: 16 / 8,
        child: CachedNetworkImage(
            imageUrl:cartModel.image),
      );
    }
  }
