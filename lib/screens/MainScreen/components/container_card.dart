import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/product_detail_screen/product_detail_screen.dart';

class ContainerCard extends StatelessWidget {
  final String image;
  const ContainerCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black12),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20.0),
                child: Icon(
                  Icons.hd,
                  size: 40,
                  color: Colors.yellow[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
