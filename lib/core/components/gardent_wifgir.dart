import 'package:flutter/material.dart';

class LinearGradientMask extends StatelessWidget {
  const LinearGradientMask(
      {super.key,
      required this.child,
      required this.color1,
      required this.color2});
  final Widget child;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.bottomCenter,
          radius: 2,
          colors: [color1, color2],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
