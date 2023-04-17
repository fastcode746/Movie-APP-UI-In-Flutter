import 'package:flutter/material.dart';

import 'chips.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/movie1.jpg"),
            ),
          ),
        ),
        Positioned(
          right: 15,
          bottom: 10,
          child: Row(
            children: const [
              CustomChips(
                chipText: "Sci-fi",
              ),
              CustomChips(chipText: "Horror"),
            ],
          ),
        ),
        Positioned(
          left: 15,
          bottom: 10,
          child: Row(
            children: const [
              Icon(
                Icons.hd,
                color: Colors.yellow,
                size: 35,
              ),
              CustomChips(chipText: "4K"),
            ],
          ),
        ),
      ],
    );
  }
}
