import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';

class CheckBoxWidgit extends StatelessWidget {
  const CheckBoxWidgit(
      {super.key, required this.title, required this.value, this.onChanged});
  final String title;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Checkbox(value: value, onChanged: onChanged), H5(title)]);
  }
}
