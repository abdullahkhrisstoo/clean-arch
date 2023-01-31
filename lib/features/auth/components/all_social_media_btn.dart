import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/images/images_assets.dart';
import 'package:flutter/material.dart';

import 'social_media_icon.dart';

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
            SocialMediaIcon(
                backColor: AppColors.greyColor1, image: ImgAssets.appel),
            SocialMediaIcon(image: ImgAssets.google)
          ]),
        ),
      ),
    );
  }
}
