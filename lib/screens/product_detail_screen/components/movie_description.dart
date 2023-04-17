import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "12 Days of Christmas Eve",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "2019 2h 12m 39s - Sci-fi Thriller Drama",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Country: USA, Canada",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Translation is Original",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "World Premiere: 31 August 2019",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
