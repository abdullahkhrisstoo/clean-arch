import 'package:clean_arch_templeate/core/components/button.dart';
import 'package:clean_arch_templeate/core/components/text_form_feaild.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/components/timer_resend.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/otp_widgit.dart';
import '../cubit/auth_c_state.dart';

class FindYourAccountScreen extends StatelessWidget {
  const FindYourAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return AuthFormWidgit(
          leading: BackButton(color: Theme.of(context).colorScheme.onPrimary),
          formKey: AuthCubit.get(context).forgetPassFormKey,
          appBarIcon: Icon(Icons.account_balance_sharp,
              color: Theme.of(context).colorScheme.onPrimary),
          headersHeight: 0.3,
          headersContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1('Find your Account',
                        color: Theme.of(context).colorScheme.onPrimary),
                    H5('Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In ',
                        color: Theme.of(context).colorScheme.onPrimary)
                  ])),
          bodyChildren: [
            TextF(
                controller: TextEditingController(
                    text: AuthCubit.get(context).emailOrPhoneForForgetPassword),
                onChanged: (val) {
                  AuthCubit.get(context).emailOrPhoneForForgetPassword = val;
                },
                validator: Validatior.emailOrPhone,
                hintText: 'Enter Your Email or Phone',
                prefixIcon: const Icon(Icons.person)),
            const SizedBox(height: 10),
            AuthCubit.get(context).emailOrPhoneForForgetPassword.length > 10
                ? OTPWidgit(
                    length: AuthCubit.get(context).otpLength,
                    controller: List.generate(AuthCubit.get(context).otpLength,
                        (index) => AuthCubit.get(context).otpController[index]))
                : const SizedBox(),
            const TimerWidgit(),
            const SizedBox(height: 10),
            FilledBTN(
                onPressed: () {
                  AuthCubit.get(context).forgetPassButton(context);
                },
                txt: 'Next')
          ],
          footerChildren: [
            const SizedBox(height: 15),
            const DividerForSocailMediaLogin(),
            InkWell(onTap: () {}, child: const AllSocialMediaBTN())
          ]);
    });
  }
}
