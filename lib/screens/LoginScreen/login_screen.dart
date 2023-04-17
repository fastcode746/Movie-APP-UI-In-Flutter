import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/Widgets/bottom_app_bar.dart';
import 'package:flutter_movie_app_ui/screens/LoginScreen/components/custom_social_button.dart';

import 'package:flutter_movie_app_ui/screens/LoginScreen/components/custom_textfield.dart';

import '../RegisterScreen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.8, color: Colors.black12),
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: const Text(
          "LOGIN",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 28,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 80,
              ),
              CustomTextField(
                hidetext: false,
                hintText: "Email",
                textEditingController: emailController,
                icon: const Icon(Icons.email_outlined),
              ),
              CustomTextField(
                hidetext: true,
                hintText: "Password",
                textEditingController: passwordController,
                icon: const Icon(Icons.lock_rounded),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.yellow[300],
                    ),
                    onPressed: () {
                      Timer(const Duration(seconds: 2), () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const BottomBar(),
                          ),
                        );
                      });
                    },
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 35),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 50,
                        height: 2,
                        color: Colors.black54,
                      ),
                    ),
                    Text("  or  "),
                    Expanded(
                      child: Divider(
                        endIndent: 50,
                        height: 2,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              CustomSocialButton(
                  way: "in",
                  onpress: () {},
                  account: "Google",
                  image: "assets/icons/search.png",
                  backgroundColor: Colors.white,
                  textColor: Colors.black54),
              CustomSocialButton(
                  way: "in",
                  onpress: () {},
                  account: "Facebook",
                  image: "assets/icons/facebook.png",
                  backgroundColor: Colors.indigoAccent,
                  textColor: Colors.white),
              CustomSocialButton(
                  way: "in",
                  onpress: () {},
                  account: "Apple",
                  image: "assets/icons/apple.png",
                  backgroundColor: Colors.white,
                  textColor: Colors.black54),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
