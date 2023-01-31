import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              MaterialButton(
                focusColor: Colors.red,
                hoverColor: Colors.green,
                splashColor: Colors.blue,
                onPressed: () {},
                child: Text('FlatButton with custom overlay colors'),
              ),
              //
              //

              // todo:
              FillBTN(title: 'hhh'),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder?>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),

                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(5)),
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                        color: AppColors.redColor, fontSize: Fonts.h2)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.darkPrimaryColor),
                    // foregroundColor:
                    //     MaterialStateProperty.all<Color>(AppColors.whiteColor),
                  ),
                  child: const Text('hhhh'),
                ),
              ),
              // FilledButton(onPressed: () {}, child: const Text('hhhh'))
            ],
          )),
    );
  }
}
