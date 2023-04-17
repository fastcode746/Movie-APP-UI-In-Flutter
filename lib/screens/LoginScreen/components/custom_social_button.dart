// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String way;
  final VoidCallback onpress;
  final String account;
  final String image;
  final Color backgroundColor, textColor;
  const CustomSocialButton({
    Key? key,
    required this.way,
    required this.onpress,
    required this.account,
    required this.image,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          height: 40,
          width: 230,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 1),
              ),
            ],
            border: Border.all(width: 1.2, color: Colors.black12),
            color: backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Sign $way with $account",
                style: TextStyle(
                    fontSize: 14, color: textColor, fontFamily: "Montserrat"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
