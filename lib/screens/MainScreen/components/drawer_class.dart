import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/components/custom_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        border: Border.fromBorderSide(
          BorderSide(
            width: 2,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/movie-frame.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Sinema",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    CustomListTile(
                      title: "Trending Movies",
                      ontap: () {},
                      iconData: const Icon(Icons.trending_up_outlined),
                    ),
                    CustomListTile(
                      title: "Upcoming",
                      ontap: () {},
                      iconData: const Icon(Icons.upcoming),
                    ),
                    CustomListTile(
                      title: "Premiere",
                      ontap: () {},
                      iconData: const Icon(Icons.broadcast_on_personal),
                    ),
                    CustomListTile(
                      title: "Log out",
                      ontap: () {},
                      iconData: const Icon(Icons.logout),
                    ),
                    CustomListTile(
                      title: "About us",
                      ontap: () {},
                      iconData: const Icon(Icons.info),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Copyrights @ FastCode Developers",
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
