// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class TestThemeApp extends StatefulWidget {
  const TestThemeApp({super.key});

  @override
  State<TestThemeApp> createState() => _TestThemeAppState();
}

int currentPageIndex = 0;

class _TestThemeAppState extends State<TestThemeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.backgroundColor,
      appBar: AppBar(
        title: Text('ddd'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.assessment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        height: 65,
        // indicatorColor: DarkColors.secondryContainerColor,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
