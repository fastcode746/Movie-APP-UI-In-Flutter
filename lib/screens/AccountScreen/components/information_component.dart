// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InformationComponent extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;
  const InformationComponent({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Text(
            description,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
