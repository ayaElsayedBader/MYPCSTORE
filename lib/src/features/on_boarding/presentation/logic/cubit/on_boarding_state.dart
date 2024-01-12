abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class OnBoardingNOPageLast extends OnBoardingState {
  final bool pageLast;

  OnBoardingNOPageLast({required this.pageLast});
}

class OnBoardingPageLast extends OnBoardingState {
  final bool pageLast;

  OnBoardingPageLast({required this.pageLast});
}
