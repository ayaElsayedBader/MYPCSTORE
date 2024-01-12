import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/entities/usecases/usecases_get_product.dart';
import 'home_lap_state.dart';

class LapHomeCubit extends Cubit<LapHomeState> {
  LapHomeCubit({required this.lapHomeUseCases}) : super(LapHomeInitial());

  final GetAllLapHomeUseCases lapHomeUseCases;

  getAllLapCubit() {
    emit(LapHomeLoadingState());

    final product = lapHomeUseCases.call();
    product.then((value) {
      if (kDebugMode) {
        print('Response from server: $value');
      }

      value.fold((failure) {
        emit(
            LapHomeFailureState(errorMessage: failure.errorMessage.toString()));
        if (kDebugMode) {
          print(" error${failure.errorMessage.toString()}");
        }
      }, (lap) {
        emit(LapHomeSuccessState(lap: lap));
      });
    });
  }
}
