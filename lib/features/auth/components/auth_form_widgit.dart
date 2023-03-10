import 'package:clean_arch_templeate/core/animation/fade_animation.dart';
import 'package:flutter/material.dart';

import 'package:clean_arch_templeate/core/extensions/sized_extension.dart';

class AuthFormWidgit extends StatelessWidget {
  const AuthFormWidgit(
      {super.key,
      required this.headersHeight,
      required this.headersContent,
      required this.bodyChildren,
      required this.footerChildren,
      this.appBarIcon,
      this.formKey,
      this.leading});
  final Widget? appBarIcon;
  final double headersHeight;
  final Widget headersContent;
  final List<Widget> bodyChildren;
  final List<Widget> footerChildren;
  final Key? formKey;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: leading,
          titleTextStyle: TextStyle(color: Theme.of(context).primaryColorDark),
          foregroundColor: Theme.of(context).primaryColorDark,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: appBarIcon,
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: MediaQueryValues(context).h * headersHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)))),
          headersContent,
          Form(
            key: formKey,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(55)),
                    Container(
                        width: MediaQueryValues(context).w * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Card(
                            // color: AppColors.greenColor,
                            // surfaceTintColor: AppColors.redColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            elevation: 5,
                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: FadeAnimation(
                                  delay: 1,
                                  child: Column(children: [
                                    const SizedBox(height: 10),
                                    ...bodyChildren
                                  ]),
                                )))),
                    const SizedBox(height: 10),
                    ...footerChildren
                  ]),
            ),
          )
        ])));
  }
}
