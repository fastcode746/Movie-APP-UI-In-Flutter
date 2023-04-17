// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final Icon iconData;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.ontap,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconData,
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.normal,
            fontSize: 18),
      ),
      onTap: ontap,
    );
  }
}
