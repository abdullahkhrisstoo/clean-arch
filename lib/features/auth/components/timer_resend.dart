import 'dart:async';

import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';

class TimerWidgit extends StatefulWidget {
  const TimerWidgit({super.key});

  @override
  State<TimerWidgit> createState() => _TimerWidgitState();
}

class _TimerWidgitState extends State<TimerWidgit> {
  late Timer _timer;
  int _start = 59;
  bool isLoading = false;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
          isLoading = false;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const H5('Don\' recive code?'),
      _start == 0
          ? InkWell(
              onTap: () {
                setState(() {
                  _start = 59;
                });
                startTimer();
              },
              child: H5('Resend', color: AppColors.darkPrimaryColor))
          : H5('0 : ${_start.toString()}', color: AppColors.darkPrimaryColor)
    ]);
  }
}
