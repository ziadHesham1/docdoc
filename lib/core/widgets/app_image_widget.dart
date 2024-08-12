import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'app_shimmer_widgets.dart';

class AppImageWidget extends StatelessWidget {
  final String imageUrl;

  const AppImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // Check if the URL is a local asset or a network image
    final bool isAssetImage =
        !imageUrl.startsWith('http') && !imageUrl.startsWith('https');

    return isAssetImage
        ? Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          )
        : /*  Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 120,
                width: 120,
              ) */
        CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => const RectangleShimmerWidget(),
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
          );
  }
}
