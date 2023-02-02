import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextF extends StatelessWidget {
  const TextF(
      {super.key,
      this.keyboardType,
      this.textInputAction,
      this.validator,
      this.maxLines,
      this.maxLength,
      this.controller,
      this.onChanged,
      this.onFieldSubmitted,
      this.onSaved,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.onEditingComplete,
      this.suffixIconFunction,
      this.onTap,
      this.datePickerMode,
      this.isPass});
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final Function()? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function()? suffixIconFunction;
  final String? hintText;
  final CupertinoDatePickerMode? datePickerMode;
  final bool? isPass;

  @override
  Widget build(BuildContext context) {
    if (keyboardType == TextInputType.datetime) {
      return InkWell(
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            enabled: false,
            onTap: () {},
          ),
          onTap: () async {
            DateTime date = DateTime.now();
            final mode = datePickerMode ?? CupertinoDatePickerMode.date;
            await showCupertinoModalPopup<DateTime>(
                context: context,
                builder: (_) {
                  return Container(
                      height: 200,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(children: [
                        SizedBox(
                            height: 200,
                            child: CupertinoDatePicker(
                                mode: mode,
                                initialDateTime: date,
                                onDateTimeChanged: (v) {
                                  if (controller == null) {
                                    log("WERRING : controller is null for date picker you need to pass controller");
                                  } else {
                                    controller?.text =
                                        v.toString().substring(0, 10);
                                  }
                                }))
                      ]));
                });
          });
    } else {
      return TextFormField(
          // textAlign: TextAlign.center,
          obscureText: isPass ?? false,
          style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: keyboardType,
          textInputAction: textInputAction ?? TextInputAction.next,
          validator: validator,
          maxLines: isPass != null ? 1 : maxLines,
          maxLength: maxLength,
          controller: controller,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          onTap: onTap,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
              // contentPadding: maxLength == 1 ? EdgeInsets.zero : null,
              counterText: '',
              hintText: hintText,
              suffixIcon: IconButton(
                  onPressed: suffixIconFunction,
                  icon: suffixIcon ?? const SizedBox()),
              prefixIcon: prefixIcon));
    }
  }
}

class Validatior {
  static String? emailOrPhone(value) {
    if (value == null || value.isEmpty) {
      return 'required';
    } else if (value.length < 10) {
      return 'Enter A valid Data';
    }
    return null;
  }

  static String? usernameVaildator(value) {
    if (value == null || value.isEmpty) {
      return 'required';
    } else if (value.length < 6) {
      return 'enter vaild name';
    }
    return null;
  }

  static String? passwordValidator(value) {
    if (value!.isEmpty || value == null) {
      return 'required';
    } else if (value.length < 8) {
      return 'Enter A Correct Password';
    }
    return null;
  }

  static String? phoneValidator(value) {
    if (value!.isEmpty) {
      return 'الرجاء ادخال رقم الهاتف ';
    } else if (value.length < 9) {
      return 'الرجاء التأكد من رقم الهاتف';
    } else {
      return null;
    }
  }

  static String? passwordConfirmationValidator(dynamic value, String password) {
    if (value!.isEmpty) {
      return 'الرجاء ادخال تأكيد كلمة المرور';
    } else if (value != password) {
      return 'الرجاء التأكد من كلمة المرور';
    } else {
      return null;
    }
  }

  static String? emailValidator(value) {
    // Check if this field is empty
    if (value == null || value.isEmpty) {
      return 'الرجاء ادخال البريد الالكتروني';
    }
    // using regular expression
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'الرجاء ادخال البريد الالكتروني بصيغه صحيحة';
    }
    // the email is valid
    return null;
  }
}
