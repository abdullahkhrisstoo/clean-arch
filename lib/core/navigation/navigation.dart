import 'package:flutter/material.dart';


  void navigateTo(context, widget) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

  void navigateToReplacement(context, widget) => Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));

  void navigateToAndRemoveUntil(context, widget) =>
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget),
          (Route<dynamic> route) => false);

  void pop(context) => Navigator.pop(context);

