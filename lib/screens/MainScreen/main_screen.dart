import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/components/custom_tabbar.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/components/drawer_class.dart';

import 'components/recommended_movies.dart';
import 'components/search_bar.dart';
import 'components/top_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopRow(
                onpress: () {
                  _scaffoldkey.currentState?.openDrawer();
                },
                onTap: () {},
              ),
              SearchBar(
                controller: searchController,
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTabBar(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "We Recommend",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "See All ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const RecommendedMovies(),
            ],
          ),
        ),
      ),
    );
  }
}
