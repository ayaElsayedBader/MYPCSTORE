import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/theme_cubit/theme_cubit.dart';

import 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  ThemeCubit get(context) => BlocProvider.of(context);
  bool pageLast = true;
  int currentIndex = 0;

  void lastPage({required int index}) {
    pageLast = false;
    currentIndex = index;
    emit(OnBoardingPageLast(pageLast: pageLast));
    if (kDebugMode) {
      print(currentIndex);
    }
  }

  void noLastPage({required int index}) {
    pageLast = false;
    currentIndex = index;
    emit(OnBoardingNOPageLast(pageLast: pageLast));
    if (kDebugMode) {
      print(currentIndex);
    }
  }
}
