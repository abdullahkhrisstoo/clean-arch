// ignore_for_file: prefer_const_constructors

import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:flutter/material.dart';

class PassWordUpdateSueccfulyScreen extends StatelessWidget {
  const PassWordUpdateSueccfulyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFormWidgit(
      headersHeight: 0.3,
      headersContent: const Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.abc, size: 40))),
      bodyChildren: [
        H2('Password Changed', color: AppColors.darkPrimaryColor),
        const H5(
            'data data data data data datata data data data data data data data data data ',
            textAlignment: TextAlign.center),
        Icon(
          Icons.done,
          color: AppColors.darkPrimaryColor,
        ),
        FilledButton(
          onPressed: () {},
          child: H4('back to login'),
          style: ButtonStyle(),
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            animationDuration: Duration(seconds: 3),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.darkPrimaryColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          child: H4('hello', color: AppColors.whiteColor),
        )
      ],
      footerChildren: [],
    );
  }
}
