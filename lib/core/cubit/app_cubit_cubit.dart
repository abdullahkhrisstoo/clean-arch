import 'dart:io';

import 'package:clean_arch_templeate/core/cache/shared_pref.dart';
import 'package:clean_arch_templeate/core/cubit/app_cubit_state.dart';
import 'package:clean_arch_templeate/core/language/ar_lang.dart';
import 'package:clean_arch_templeate/core/language/en_lang.dart';
import 'package:clean_arch_templeate/core/language/lang.dart';
import 'package:clean_arch_templeate/features/layout/screen/explore/explore_screen.dart';
import 'package:clean_arch_templeate/features/layout/screen/notification/notification_screen.dart';
import 'package:clean_arch_templeate/features/layout/screen/products/products_screens.dart';
import 'package:clean_arch_templeate/features/layout/screen/saved/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/layout/screen/menu/menu_scree.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppCubitInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  // todo: language

  List<Locale> local = const [Locale('ar'), Locale('en')];

  static AppStrings strings = EnglishString();

  void languageToggel(Locale langType) {
    if (langType == const Locale('ar')) {
      strings = ArabicString();
      SharedPref.saveData(
              key: SharedPref.langTypeKey, value: langType.languageCode)
          .then((value) => emit(AppChangeLanguageState()));
    } else {
      strings = EnglishString();
      SharedPref.saveData(
              key: SharedPref.langTypeKey, value: langType.languageCode)
          .then((value) => emit(AppChangeLanguageState()));
    }
  }

  Locale getDefultLang() {
    final String defaultLocale = Platform.localeName.substring(0, 2);
    if (defaultLocale == 'ar') {
      return const Locale('ar');
    } else {
      return const Locale('en');
    }
  }

  getCacheLocal() async {
    return (await SharedPref.getData(key: SharedPref.langTypeKey) ==
            const Locale('en').languageCode)
        ? const Locale('en')
        : const Locale('ar');
  }

  Locale setLangMain() {
    return SharedPref.getData(key: SharedPref.langTypeKey) == null
        ? getDefultLang()
        : getCacheLocal();
  }

  //todo: App Theme
  bool isDark = false;
  void modeToggel(bool modeStates) {
    isDark = modeStates;
    SharedPref.saveData(key: SharedPref.isDark, value: isDark);
    emit(AppChangeModeState());
  }

  ThemeMode setMainTheme() {
    if ((SharedPref.getData(key: SharedPref.isDark) == null) ||
        isDark == false) {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  // todo APP LAYOUT
  List<Widget> layoutScreen = const [
    ExploreScreen(),
    ProductsScreen(),
    SavedScreen(),
    NotificationScreen(),
    MenuScreen(),
  ];
  List<Widget> layoutappBar = [];
  int layoutIndex = 0;
  void changeLayoutScreen(int index) {
    layoutIndex = index;
    emit(AppChangeLayoutState());
  }
}
