import 'package:flutter/material.dart';

class PhotoGalleryContainer extends StatelessWidget {
  final String image;
  const PhotoGalleryContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
