import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';

class DividerForSocailMediaLogin extends StatelessWidget {
  const DividerForSocailMediaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(height: 1, color: Theme.of(context).dividerColor)),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Subtitle1('Or Sign In With',
              color: Theme.of(context).dividerColor),
        ),
        Expanded(
            child: Container(height: 1, color: Theme.of(context).dividerColor))
      ],
    );
  }
}
