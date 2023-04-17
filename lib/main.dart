import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app_ui/screens/OnBoardingScreen/on_boarding_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sinema',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black87,
          size: 24,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
