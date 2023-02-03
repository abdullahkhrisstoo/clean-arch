import 'package:clean_arch_templeate/core/components/button.dart';
import 'package:clean_arch_templeate/core/components/check_box.dart';
import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/components/text_form_feaild.dart';
import 'package:clean_arch_templeate/core/navigation/navigation.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:clean_arch_templeate/features/auth/screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AuthFormWidgit(
          leading: BackButton(color: Theme.of(context).colorScheme.onPrimary),
          formKey: AuthCubit.get(context).registerFormKey,
          appBarIcon: Icon(Icons.account_balance_sharp,
              color: Theme.of(context).colorScheme.onPrimary),
          headersHeight: 0.4,
          headersContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1('Register',
                        color: Theme.of(context).colorScheme.onPrimary),
                    H5('Register Register Register Register Register Register Register Register Register ',
                        color: Theme.of(context).colorScheme.onPrimary),
                  ])),
          bodyChildren: [
            // todo: username
            TextF(
                keyboardType: TextInputType.name,
                onChanged: (val) {
                  AuthCubit.get(context).registerUsername = val;
                },
                validator: Validatior.usernameVaildator,
                hintText: 'Username',
                prefixIcon: const Icon(Icons.person)),
            const SizedBox(height: 15),
            // todo: email

            TextF(
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {
                  AuthCubit.get(context).registerEmail = val;
                },
                validator: Validatior.emailValidator,
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email)),
            const SizedBox(height: 15),
            // todo: phone

            TextF(
                keyboardType: TextInputType.phone,
                onChanged: (val) {
                  AuthCubit.get(context).registerPhone = val;
                },
                validator: Validatior.phoneValidator,
                hintText: 'Phone Number',
                prefixIcon: const Icon(Icons.phone)),
            const SizedBox(height: 15),
            // todo: pass

            TextF(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (val) {
                  AuthCubit.get(context).registerRePass = val;
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
                  AuthCubit.get(context).registerRePass = val;
                },
                validator: (val) {
                  return Validatior.passwordConfirmationValidator(
                      val, AuthCubit.get(context).registerRePass);
                },
                hintText: 'Re-type Password',
                prefixIcon: const Icon(Icons.password),
                isPass: AuthCubit.get(context).isHidePassword,
                suffixIcon: Icon(AuthCubit.get(context).passordVisabileIcon),
                suffixIconFunction: () {
                  AuthCubit.get(context).passwordVisabileToggel();
                }),
            const SizedBox(height: 10),
            // todo: check Box
            CheckBoxWidgit(
              title: 'Agree terms and conditions',
              value: AuthCubit.get(context).isAgreeTerms,
              onChanged: (bool? val) {
                AuthCubit.get(context).agreeTermsChecker(val);
              },
            ),
            CheckBoxWidgit(
              title: 'Above 18 years of age',
              value: AuthCubit.get(context).isAbove18,
              onChanged: (bool? val) {
                AuthCubit.get(context).userAgeChecker(val);
              },
            ),
            // todo: register Function

            FilledBTN(
                txt: 'Register',
                onPressed: () {
                  AuthCubit.get(context).registerButton();
                  navigateTo(context, const OtpScreen());
                })
          ],
          footerChildren: const [
            DividerForSocailMediaLogin(),
            AllSocialMediaBTN(),
            SizedBox(height: 15)
          ],
        );
      },
    );
  }
}
