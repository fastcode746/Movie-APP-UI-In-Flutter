// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ShareFloatingActionButton extends StatelessWidget {
  final String heroTag;
  final String image;
  final VoidCallback onpressed;
  const ShareFloatingActionButton({
    Key? key,
    required this.heroTag,
    required this.image,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        heroTag: heroTag,
        mini: true,
        onPressed: onpressed,
        elevation: 0,
        backgroundColor: Colors.black.withAlpha(50),
        child: Image.asset(
          image,
        ));
  }
}
