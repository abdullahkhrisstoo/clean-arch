import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/components/button.dart';
import 'package:clean_arch_templeate/core/navigation/navigation.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/screen/register_screen.dart';
import 'package:clean_arch_templeate/features/auth/screen/log_in_screen.dart';
import 'package:flutter/material.dart';

class IntroAuthScreen extends StatelessWidget {
  const IntroAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFormWidgit(
      headersHeight: 0.3,
      headersContent: const Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.abc, size: 40))),
      bodyChildren: [
        const H3("Welcome To Buy to Be"),
        const Subtitle1("Descover Amazing Things Near Around You"),
        const SizedBox(height: 20),
        FilledBTN(
            txt: 'Login',
            onPressed: () => navigateTo(context, const SignInScreen())),
        OutlinedBTN(
            txt: 'Register',
            onPressed: () => navigateTo(context, const RegisterScreen())),
        const DividerForSocailMediaLogin(),
        const AllSocialMediaBTN(),
      ],
      footerChildren: [
        TextBTN(
          onPressed: () {},
          text: 'Skip',
        )
      ],
    );
  }
}
