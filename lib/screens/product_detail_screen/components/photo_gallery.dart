import 'package:flutter/material.dart';

import 'package:flutter_movie_app_ui/screens/product_detail_screen/components/photo_gallery_container.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0, top: 8.0),
          child: Text(
            "Photo Gallery",
            style: TextStyle(
                letterSpacing: 0.01,
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: const [
                PhotoGalleryContainer(
                  image: "assets/images/d1.jpg",
                ),
                PhotoGalleryContainer(
                  image: "assets/images/d2.jpg",
                ),
                PhotoGalleryContainer(
                  image: "assets/images/d3.jpg",
                ),
                PhotoGalleryContainer(
                  image: "assets/images/d4.jpg",
                ),
                PhotoGalleryContainer(
                  image: "assets/images/d5.jpg",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
