import 'package:clean_arch_templeate/app.dart';
import 'package:clean_arch_templeate/core/cache/shared_pref.dart';
import 'package:clean_arch_templeate/core/cubit/app_cubit_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();

  // ignore: prefer_const_constructors
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (BuildContext context) => AppCubit()),
    BlocProvider<AuthCubit>(create: ((context) => AuthCubit()))
  ], child: const MyApp()));
}
