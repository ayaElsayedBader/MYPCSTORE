import 'package:flutter/material.dart';
import '../../../../../core/manger/size_app.dart';
import '../../../../home_lap/domain/entities/models/product_model.dart';
import '../../widget_see_more/column_text_see_more.dart';
import '../../widget_see_more/stack_image_see_more.dart';
import '../../widget_see_more/text_to_learn_more_about_device.dart';



class SeeMoreScreen extends StatelessWidget {
  const SeeMoreScreen({super.key, required this.lapHomeModel});

  final LapItemsModel lapHomeModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: SizeApp.size4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeApp.size40),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: SizeApp.size40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextToLearNMoreAboutDevice(),
              const SizedBox(height: SizeApp.size30),
              StackImageSeeMore(
                lapHomeModel: lapHomeModel,
              ),
              Padding(
                  padding: const EdgeInsets.all(SizeApp.size12),
                  child: ColumnTextSeeMore(lapHomeModel: lapHomeModel)),
            ],
          ),
        ),
      ),
    );
  }
}
