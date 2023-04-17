import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/components/carousel_cards.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            splashColor: Colors.black45,
            buttonMargin: const EdgeInsets.only(left: 8.0),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            unselectedBorderColor: Colors.transparent,
            radius: 30,
            height: 50,
            borderWidth: 1.0,
            borderColor: Colors.black,
            backgroundColor: Colors.black12,
            unselectedBackgroundColor: Colors.black12,
            unselectedLabelStyle: const TextStyle(color: Colors.black38),
            labelStyle: const TextStyle(
                color: Colors.black,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold),
            tabs: const [
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "New",
              ),
              Tab(
                text: "Premieres",
              ),
              Tab(
                text: "Random",
              ),
              Tab(
                text: "Celebrity",
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.6,
            width: double.infinity,
            child: const TabBarView(
              children: [
                CarouselCards(),
                CarouselCards(),
                CarouselCards(),
                CarouselCards(),
                CarouselCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
