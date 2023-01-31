import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';

class FillBTN extends StatelessWidget {
  const FillBTN(
      {super.key,
      this.w,
      required this.title,
      this.backgroundColor,
      this.onTap});
  final double? w;
  final String title;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(5),
            width: w ?? double.infinity,
            decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.darkPrimaryColor,
                borderRadius: BorderRadius.circular(8)),
            child: Center(child: H3(title, color: AppColors.whiteColor))),
      ),
    );
  }
}

class NonFillBTN extends StatelessWidget {
  const NonFillBTN({super.key, this.w, required this.title, this.onTap});
  final double? w;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
              padding: const EdgeInsets.all(5),
              width: w ?? double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.darkPrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(8)),
              child:
                  Center(child: H3(title, color: AppColors.darkPrimaryColor))),
        ));
  }
}
