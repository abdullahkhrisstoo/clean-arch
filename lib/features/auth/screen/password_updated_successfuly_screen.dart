
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
        H2(
          'Password Changed',
        ),
        const H5(
            'data data data data data datata data data data data data data data data data ',
            textAlignment: TextAlign.center),
        Icon(Icons.done),
        FilledButton(
          onPressed: () {},
          child: H4('back to login'),
          style: ButtonStyle(),
        ),
      ],
      footerChildren: [],
    );
  }
}
