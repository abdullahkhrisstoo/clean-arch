// // ignore_for_file: prefer_const_constructors
import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/components/show_dialoge.dart';
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
        FillBTN(
            title: 'Login',
            onTap: () => navigateTo(context, const SignInScreen())),
        NonFillBTN(
          title: 'Register',
          onTap: () => navigateTo(context, const RegisterScreen()),
        ),
        const DividerForSocailMediaLogin(),
        const AllSocialMediaBTN()
      ],
      footerChildren: [
        TextButton(
            onPressed: () {
              showAlertDialog(
                  context: context,
                  content: 'Password update Succesfuly',
                  defaultActionText: 'ff',
                  title: 'Password update Succesfuly');
            },
            child: const BodyText2('Skip'))
      ],
    );
  }
}
