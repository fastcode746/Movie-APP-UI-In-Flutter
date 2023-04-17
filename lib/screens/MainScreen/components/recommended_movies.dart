import 'package:flutter/material.dart';

import 'package:flutter_movie_app_ui/screens/MainScreen/components/movie_card.dart';

class RecommendedMovies extends StatelessWidget {
  const RecommendedMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 5, left: 15),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MovieCard(
            name: "Horror",
            image: "assets/images/movie1.jpg",
          ),
          const MovieCard(
            name: "Uncharted",
            image: "assets/images/movie2.jpg",
          ),
          const MovieCard(
            name: "Uncharted 4",
            image: "assets/images/movie3.jpg",
          ),
          const MovieCard(
            name: "Jungle Cruise",
            image: "assets/images/movie4.jpg",
          ),
          const MovieCard(
            name: "Avengers",
            image: "assets/images/movie5.jpg",
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
