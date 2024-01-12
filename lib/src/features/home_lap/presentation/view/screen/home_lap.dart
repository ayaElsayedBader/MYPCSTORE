import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../config/services/notification_service.dart';
import '../../../../../core/manger/string_app.dart';
import '../../logic/cubit_product/home_lap_cubit.dart';
import '../../logic/cubit_product/home_lap_state.dart';
import '../widgets_home_lap/failure_widget.dart';
import '../widgets_home_lap/loading_widget.dart';
import '../widgets_home_lap/success_lap_ home_widget.dart';

class HomeLap extends StatelessWidget {
  const HomeLap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LapHomeCubit, LapHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LapHomeSuccessState) {
          NotificationService.triggerNotification(
              title: '', body: StringApp.lap);

          return SuccessLapWidget(
            lapItemsModelList: state.lap,
          );
        } else if (state is LapHomeFailureState) {
          return FailureWidget(
            text: state.errorMessage,
          );
        } else {
          return const CustomLoadingWidget ();
        }
      },
    );
  }
}
