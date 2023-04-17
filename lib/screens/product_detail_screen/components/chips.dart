import 'package:flutter/material.dart';

class CustomChips extends StatelessWidget {
  final String chipText;
  const CustomChips({
    Key? key,
    required this.chipText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        elevation: 0,
        surfaceTintColor: Colors.black.withAlpha(50),
        shadowColor: Colors.black.withAlpha(50),
        visualDensity: VisualDensity.standard,
        backgroundColor: Colors.black.withAlpha(50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        label: Text(
          chipText,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Montserrat",
          ),
        ),
      ),
    );
  }
}
