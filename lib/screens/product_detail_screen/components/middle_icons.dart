import 'package:flutter/material.dart';

class MiddleIcons extends StatelessWidget {
  const MiddleIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Chip(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                label: Text(
                  "IMDB 8.4/10",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "1.2M",
                style: TextStyle(
                  fontFamily: "Montserrat",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 45,
                decoration: const BoxDecoration(),
                child: Image.asset("assets/images/heart.png"),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 40,
                decoration: const BoxDecoration(),
                child: Image.asset("assets/images/share.png"),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 40,
                decoration: const BoxDecoration(),
                child: Image.asset("assets/images/save-instagram.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}
