import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPWidgit extends StatelessWidget {
  const OTPWidgit({super.key, required this.length, this.controller});
  final int length;
  final List<TextEditingController>? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            length,
            (index) => SizedBox(
                width: 50,
                child: TextField(
                    controller: controller![index],
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.zero,
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (val) {

                      if (val.length == 1 && index <= 5) {
                        FocusScope.of(context).nextFocus();
                      } else if (val.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                      
                    },
                    style: Theme.of(context).textTheme.titleLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ]))));
  }
}
