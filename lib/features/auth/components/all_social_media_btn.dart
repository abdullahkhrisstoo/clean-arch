import 'package:clean_arch_templeate/core/images/images_assets.dart';
import 'package:flutter/material.dart';

class AllSocialMediaBTN extends StatelessWidget {
  const AllSocialMediaBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SocialMediaIcon(image: ImgAssets.facebook),
            SocialMediaIcon(image: ImgAssets.appel),
            SocialMediaIcon(image: ImgAssets.google)
          ]),
        ),
      ),
    );
  }
}


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
