import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImgAssets {
  static const String imgPath = 'assets/images/image/';

  static ImageProvider<Object> appel =
      const AssetImage('${imgPath}appel_icon.png');

  static ImageProvider<Object> facebook =
      const AssetImage('${imgPath}facebook_icon.png');

  static ImageProvider<Object> google =
      const AssetImage('${imgPath}google_icon.png');
}

class ImgSvg {
  static const String svgPath = 'assets/images/svg/';

  static SvgPicture personAvatar = SvgPicture.asset(
    '${svgPath}login_avatar.svg',
    width: 30,
    height: 30,
  );
}
