import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pc/src/config/theme_cubit/theme_cubit.dart';
import 'package:pc/src/config/theme_cubit/theme_state.dart';
import 'package:pc/src/core/Di/service_locator.dart';
import 'package:pc/src/core/theme_app/theme_app.dart';
import 'package:pc/src/features/cart/presentation/logic/cart_cubit/cart_cubit.dart';
import 'package:pc/src/features/edit_profile/presentation/logic/edit_%20profile_cubit/edit_profile_cubit.dart';
import 'package:pc/src/features/favorite/presentation/logic/fav_cubit/favorite%20_cubit.dart';
import 'package:pc/src/features/home_lap/presentation/logic/cubit_product/home_lap_cubit.dart';
import 'package:pc/src/features/login/presentation/logic/login_cubit/login_cubit.dart';
import 'package:pc/src/features/on_boarding/presentation/logic/cubit/on_boarding_cubit.dart';
import 'package:pc/src/features/register/presentation/logic/register_cubit/register_cubit.dart';
import 'package:pc/src/features/search/presentation/logic/cubit_search/search_cubit.dart';
import 'package:pc/src/features/splash/presentation/view/screen/splash.dart';
class MyLappyApp extends StatelessWidget {
  const MyLappyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => OnBoardingCubit(),
        ),
        BlocProvider(create: (context) => serviceLocator.get<LoginCubit>()),
        BlocProvider(create: (context) => serviceLocator.get<RegisterCubit>()),
        BlocProvider(
            create: (context) =>
                serviceLocator.get<ProfileCubit>()..profileUser()),
        BlocProvider(
            create: (context) => serviceLocator.get<CartCubit>()..getAllCart()),
        BlocProvider(
            create: (context) =>
                serviceLocator.get<LapHomeCubit>()..getAllLapCubit()),
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider(create: (context) =>  SearchCubit()),

      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          ThemeCubit cubit = BlocProvider.of<ThemeCubit>(context);
          return MaterialApp(
              theme: themeApp(isLight: cubit.isDarkTheme), home:  const SplashScreen ());
        },
      ),
    );
  }
}
