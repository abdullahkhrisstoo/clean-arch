import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon(
      {super.key, required this.image, this.backColor, this.onTap});
  final ImageProvider<Object> image;
  final Color? backColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(10)),
          child: Image(
            image: image,
          )),
    );
  }
}
