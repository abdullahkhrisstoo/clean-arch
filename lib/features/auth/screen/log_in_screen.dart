// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/components/text_form_feaild.dart';
import 'package:clean_arch_templeate/core/navigation/navigation.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:clean_arch_templeate/features/auth/screen/find_your_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return AuthFormWidgit(
          formKey: AuthCubit.get(context).loginFormKey,
          appBarIcon: Icon(Icons.account_balance_sharp),
          headersHeight: 0.4,
          headersContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    H1('Login'),
                    H5('Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In '),
                  ])),
          bodyChildren: [
            TextF(
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {
                  AuthCubit.get(context).loginPhoneOrEmail = val;
                },
                validator: Validatior.emailOrPhone,
                hintText: 'Enter your Email or Phone',
                prefixIcon: Icon(Icons.person)),
            SizedBox(height: 10),
            TextF(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (val) {
                  AuthCubit.get(context).loginPassword = val;
                },
                validator: Validatior.passwordValidator,
                isPass: AuthCubit.get(context).isHidePassword,
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(AuthCubit.get(context).passordVisabileIcon),
                suffixIconFunction: () {
                  AuthCubit.get(context).passwordVisabileToggel();
                }),
            SizedBox(height: 10),
            FillBTN(
                title: 'Sign In', onTap: AuthCubit.get(context).loginButton),
            TextButton(
                onPressed: () => navigateTo(context, FindYourAccountScreen()),
                child:
                    H4('Forget password?', color: AppColors.darkPrimaryColor))
          ],
          footerChildren: [
            DividerForSocailMediaLogin(),
            InkWell(
                onTap: () {
                  log(AuthCubit.get(context).loginPhoneOrEmail);
                },
                child: AllSocialMediaBTN())
          ]);
    });
  }
}
