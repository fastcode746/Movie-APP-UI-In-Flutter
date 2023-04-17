import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/AccountScreen/components/information_component.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withAlpha(50),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(
                        20,
                      ),
                    ),
                    border: BorderDirectional(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 8,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(0, 2),
                                color: Colors.black12)
                          ],
                          image: const DecorationImage(
                              image: AssetImage("assets/images/avatar.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(width: 1.4, color: Colors.black12),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          const Text(
                            "@zargham_746",
                            style: TextStyle(
                                color: Colors.black38,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Zargham Abbas",
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 5),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Mangla Cantt ',
                                    style: TextStyle(color: Colors.yellow)),
                                TextSpan(
                                  text: ' | ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38,
                                  ),
                                ),
                                TextSpan(
                                    text: 'Joined April 2023',
                                    style: TextStyle(
                                      color: Colors.black38,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 3.0),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.logout_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Log out",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Montserrat"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 3.0),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.movie_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Favorites",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Montserrat"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: Text(
                              "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: "Montserrat"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              margin: const EdgeInsets.all(5.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  InformationComponent(
                      icon: Icon(
                        Icons.web_sharp,
                        color: Colors.grey,
                      ),
                      title: "Website",
                      description: "www.example123.com"),
                  InformationComponent(
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      title: "Email",
                      description: "czaaaa20@gmail.com"),
                  InformationComponent(
                      icon: Icon(
                        Icons.call,
                        color: Colors.grey,
                      ),
                      title: "Phone",
                      description: "+92 123 456789"),
                  InformationComponent(
                      icon: Icon(
                        Icons.calendar_today_sharp,
                        color: Colors.grey,
                      ),
                      title: "Joined",
                      description: "April 2023"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
