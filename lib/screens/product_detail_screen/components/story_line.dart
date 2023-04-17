import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Storyline",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                    text:
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. ',
                    style: TextStyle(color: Colors.black54)),
                TextSpan(
                    text: "See more",
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
