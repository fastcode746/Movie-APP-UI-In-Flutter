import 'package:flutter/material.dart';

import 'share_floating_action_button.dart';

class ShareRow extends StatelessWidget {
  const ShareRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10.0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Share in",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              ShareFloatingActionButton(
                  heroTag: "facebook_icon",
                  image: "assets/icons/facebook.png",
                  onpressed: () {}),
              ShareFloatingActionButton(
                  heroTag: "instagram_icon",
                  image: "assets/icons/instagram.png",
                  onpressed: () {}),
              ShareFloatingActionButton(
                  heroTag: "whatsapp_icon",
                  image: "assets/icons/whatsapp.png",
                  onpressed: () {}),
              ShareFloatingActionButton(
                  heroTag: "twitter_icon",
                  image: "assets/icons/twitter.png",
                  onpressed: () {}),
              ShareFloatingActionButton(
                  heroTag: "linkedin_icon",
                  image: "assets/icons/linkedin.png",
                  onpressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
