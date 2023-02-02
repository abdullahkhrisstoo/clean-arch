import 'dart:developer';
import 'package:clean_arch_templeate/core/components/button.dart';
import 'package:clean_arch_templeate/core/components/custom_btn.dart';
import 'package:clean_arch_templeate/core/components/text_form_feaild.dart';
import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:clean_arch_templeate/features/auth/components/all_social_media_btn.dart';
import 'package:clean_arch_templeate/features/auth/components/auth_form_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/divider_for_social_media.dart';
import 'package:clean_arch_templeate/features/auth/components/otp_widgit.dart';
import 'package:clean_arch_templeate/features/auth/components/timer_resend.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_cubit.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AuthFormWidgit(
          formKey: AuthCubit.get(context).verfiyPhonekey,
          appBarIcon: const Icon(Icons.account_balance_sharp),
          headersHeight: 0.4,
          headersContent: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    H1('Phone verfiy'),
                    H5('Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In Sign In ')
                  ])),
          bodyChildren: [
            TextF(
                controller: TextEditingController(
                    text: AuthCubit.get(context).registerPhone),
                keyboardType: TextInputType.phone,
                onChanged: (val) {
                  AuthCubit.get(context).loginPhoneOrEmail = val;
                },
                validator: Validatior.phoneValidator,
                hintText: '',
                prefixIcon: const Icon(Icons.phone)),
            const SizedBox(height: 10),

            OTPWidgit(
              length: AuthCubit.get(context).otpLength,
              controller: List.generate(AuthCubit.get(context).otpLength,
                  (index) => AuthCubit.get(context).otpController[index]),
            ),
            
            SizedBox(height: 10),
            TimerWidgit(),
            FilledBTN(
                txt: 'Next',
                onPressed: () {
                  AuthCubit.get(context).phoneVerfiyButton();
                }),
          ],
          footerChildren: [
            SizedBox(height: 15),
            DividerForSocailMediaLogin(),
            InkWell(
                onTap: () {
                  log(AuthCubit.get(context).loginPhoneOrEmail);
                },
                child: AllSocialMediaBTN())
          ],
        );
      },
    );
  }
}
