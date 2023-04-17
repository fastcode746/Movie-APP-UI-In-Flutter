import 'package:flutter/material.dart';
import 'actor.dart';

class ListOfActors extends StatelessWidget {
  const ListOfActors({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: const [
          Actor(
            movierole: "Iron Man",
            actorname: "Robert Downey jr.",
            image: "assets/images/iron_man.jpg",
          ),
          Actor(
            movierole: "SpiderMan",
            actorname: "Tom Holland",
            image: "assets/images/tom_cruise.png",
          ),
          Actor(
            movierole: "Doctor",
            actorname: "Tom Cruise",
            image: "assets/images/tom_holland.jpg",
          ),
          Actor(
            movierole: "Wrestler",
            actorname: "Dwayne Johnson",
            image: "assets/images/dwayne_johnson.jpg",
          ),
          Actor(
            movierole: "Captain America",
            actorname: "Chris Evans",
            image: "assets/images/chris_evans.jpg",
          ),
          Actor(
            movierole: "Thor",
            actorname: "Chris Hemsworth",
            image: "assets/images/chris_hemsworth.jpg",
          ),
        ],
      ),
    );
  }
}
