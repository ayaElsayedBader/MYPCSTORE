import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pc/src/config/theme_cubit/theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {

    getTheme();
  }
  static ThemeCubit   get ( context) => BlocProvider.of(context);

  bool isDarkTheme = false;

  void setTheme({required bool isDark}) async {
    SharedPreferences shard = await SharedPreferences.getInstance();
    shard.setBool('key', isDark);
    isDarkTheme = isDark;
    emit(GetThemeState());
  }

   getTheme() async {
    SharedPreferences shard = await SharedPreferences.getInstance();

    isDarkTheme = shard.getBool("key") ?? false;
    emit(GetThemeState());
  }
}
