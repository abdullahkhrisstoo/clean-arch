// ignore_for_file: prefer_const_constructors

import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/components/text_form_feaild.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AuthFormWidgit(
          formKey: AuthCubit.get(context).newPasswordFormKey,
          appBarIcon: Icon(Icons.account_balance_sharp),
          headersHeight: 0.3,
          headersContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    H1('new password'),
                    H5('Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In '),
                  ])),
          bodyChildren: [
            TextF(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (val) {
                  AuthCubit.get(context).pass1 = val;
                },
                validator: Validatior.passwordValidator,
                hintText: 'Password',
                prefixIcon: const Icon(Icons.password),
                isPass: AuthCubit.get(context).isHidePassword,
                suffixIcon: Icon(AuthCubit.get(context).passordVisabileIcon),
                suffixIconFunction: () {
                  AuthCubit.get(context).passwordVisabileToggel();
                }),
            const SizedBox(height: 15),
            // todo: rePass
            TextF(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (val) {
                  AuthCubit.get(context).pass2 = val;
                },
                validator: (val) {
                  return Validatior.passwordConfirmationValidator(
                      val, AuthCubit.get(context).pass1);
                },
                hintText: 'Re-type Password',
                prefixIcon: const Icon(Icons.password),
                isPass: AuthCubit.get(context).isHidePassword,
                suffixIcon: Icon(AuthCubit.get(context).passordVisabileIcon),
                suffixIconFunction: () {
                  AuthCubit.get(context).passwordVisabileToggel();
                }),

            SizedBox(height: 10),
            FillBTN(
                title: 'Update password',
                onTap: () {
                  AuthCubit.get(context).setNewPasswordButton(context);
                })
          ],
          footerChildren: [
            SizedBox(height: 15),
            DividerForSocailMediaLogin(),
            InkWell(onTap: () {}, child: AllSocialMediaBTN())
          ],
        );
      },
    );
  }
}
