import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageWidget extends StatelessWidget {
  const CacheImageWidget(
      {super.key, required this.imgURL, required this.loadingWidgit});
  final String imgURL;
  final Widget loadingWidgit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        fit: BoxFit.cover,
        maxHeightDiskCache: 20,
        imageUrl: imgURL,
        placeholder: (context, url) {
          return loadingWidgit;
        },
        errorWidget: (context, url, error) => loadingWidgit,
        fadeOutDuration: const Duration(seconds: 1),
        fadeInDuration: const Duration(seconds: 3));
  }
}
