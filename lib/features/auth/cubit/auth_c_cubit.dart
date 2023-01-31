import 'dart:developer';

import 'package:clean_arch_templeate/core/navigation/navigation.dart';
import 'package:clean_arch_templeate/features/auth/cubit/auth_c_state.dart';
import 'package:clean_arch_templeate/features/auth/screen/new_password_screen.dart';
import 'package:clean_arch_templeate/features/auth/screen/password_updated_successfuly_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  int otpLength = 6;

  bool isHidePassword = false;
  IconData passordVisabileIcon = Icons.visibility_off;
  passwordVisabileToggel() {
    isHidePassword = !isHidePassword;
    (isHidePassword == true)
        ? (passordVisabileIcon = Icons.visibility_off)
        : (passordVisabileIcon = Icons.visibility);
    log(isHidePassword.toString());
    emit(ToggelPassState());
  }

  // todo: login

  final loginFormKey = GlobalKey<FormState>();
  void loginButton() {
    if (loginFormKey.currentState!.validate()) {
      log("message");
    }
  }

  String loginPhoneOrEmail = '';
  String loginPassword = '';

  // todo: register
  final registerFormKey = GlobalKey<FormState>();
  void registerButton() {
    if (registerFormKey.currentState!.validate()) {
      log("message");
    }
    emit(LoginState());
  }

  bool isAbove18 = false;
  bool isAgreeTerms = false;

  String registerUsername = '';
  String registerEmail = '';
  String registerPhone = '';
  String registerPassword = '';
  String registerRePass = '';

  void userAgeChecker(val) {
    isAbove18 = val;
    emit(Above18State());
  }

  void agreeTermsChecker(val) {
    isAgreeTerms = val;
    emit(AgreeTermsState());
  }

  // todo: verfiy phone
  final verfiyPhonekey = GlobalKey<FormState>();
  void phoneVerfiyButton() {
    if (verfiyPhonekey.currentState!.validate()) {
      log("message");
    }
    emit(PhoneVerfiyState());
  }

  var otpController = List.generate(6, (index) => TextEditingController());

  // todo: ForgetPAssword

  String emailOrPhoneForForgetPassword = '';

  final forgetPassFormKey = GlobalKey<FormState>();
  final newPasswordFormKey = GlobalKey<FormState>();

  String pass1 = '';
  String pass2 = '';

  void forgetPassButton(BuildContext context) {
    if (forgetPassFormKey.currentState!.validate()) {
      if (otpController.any((controller) => controller.text.isNotEmpty)) {
        navigateTo(context, const NewPasswordScreen());
      }
    }
    emit(ForgetPassButton());
  }

  void setNewPasswordButton(context) {
    if (newPasswordFormKey.currentState!.validate()) {
      navigateTo(context, const PassWordUpdateSueccfulyScreen());
    }
    emit(SetNewPasswordState());
  }
}
