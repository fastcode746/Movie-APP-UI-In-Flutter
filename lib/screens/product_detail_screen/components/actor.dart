import 'package:flutter/material.dart';

class Actor extends StatelessWidget {
  final String image;
  final String movierole;
  final String actorname;
  const Actor({
    Key? key,
    required this.image,
    required this.movierole,
    required this.actorname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Colors.black12),
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Text(
            actorname,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat"),
          ),
          Text(
            movierole,
            style: const TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.normal,
              fontFamily: "Montserrat",
            ),
          )
        ],
      ),
    );
  }
}
