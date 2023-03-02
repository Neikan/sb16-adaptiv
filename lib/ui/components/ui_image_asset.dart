// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/urls.dart';

class UiImageAsset extends StatefulWidget {
  final String image;
  final double height;

  const UiImageAsset({
    super.key,
    required this.image,
    required this.height,
  });

  @override
  State<UiImageAsset> createState() => _UiImageAssetState();
}

class _UiImageAssetState extends State<UiImageAsset> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: widget.height,
        child: Image.asset(
          '$localUrlImage${widget.image}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
