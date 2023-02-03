import 'package:clean_arch_templeate/core/constant/app_constant.dart';
import 'package:clean_arch_templeate/core/cubit/app_cubit_cubit.dart';
import 'package:clean_arch_templeate/core/theme/thems_manger/dark_thems.dart';
import 'package:clean_arch_templeate/core/theme/thems_manger/light_thems.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:clean_arch_templeate/features/layout/screen/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return MaterialApp(
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          supportedLocales: AppCubit.get(context).local,
          locale: AppCubit.get(context).setLangMain(),
          themeMode: ThemeMode.dark,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          title: AppConstant.appName,
          theme: lightTheme,
          home: const Layout());
    });
  }
}
