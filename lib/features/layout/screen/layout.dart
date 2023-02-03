// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/cubit/app_cubit_cubit.dart';
import 'package:clean_arch_templeate/core/cubit/app_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('ddd'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.assessment)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ],
          ),
          bottomNavigationBar: NavigationBar(
              height: 60,
              onDestinationSelected: (int index) {
                AppCubit.get(context).changeLayoutScreen(index);
              },
              selectedIndex: AppCubit.get(context).layoutIndex,
              destinations: const [
                NavigationDestination(
                    selectedIcon: Icon(Icons.explore),
                    icon: Icon(Icons.explore_outlined),
                    label: 'Explore'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.storefront_rounded),
                    icon: Icon(Icons.storefront_outlined),
                    label: 'Products'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.bookmark),
                    icon: Icon(Icons.bookmark_border),
                    label: 'Saved'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.notifications),
                    icon: Icon(Icons.notifications_none_sharp),
                    label: 'notifications'),
                NavigationDestination(icon: Icon(Icons.menu), label: 'Mune')
              ]),
          body: AppCubit.get(context)
              .layoutScreen[AppCubit.get(context).layoutIndex],
        );
      },
    );
  }
}
