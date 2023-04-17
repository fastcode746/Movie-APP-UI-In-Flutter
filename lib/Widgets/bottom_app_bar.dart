import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/screens/AccountScreen/account_screen.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/main_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final _pageController = PageController(initialPage: 0);

  int maxCount = 2;

  final List<Widget> bottomBarPages = [
    const MainScreen(),
    const AccountScreen()
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              pageController: _pageController,
              color: Colors.white,
              showLabel: false,
              notchColor: Colors.yellow.shade600,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.black38,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.black,
                  ),
                  itemLabel: 'Page 1',
                ),

                ///svg example

                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.black38,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  itemLabel: 'Page 5',
                ),
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              },
            )
          : null,
    );
  }
}


// import 'package:flutter/material.dart';

// import '../screens/AccountScreen/account_screen.dart';
// import '../screens/MainScreen/main_screen.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({Key? key}) : super(key: key);

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _page = 0;
//   double bottomBarWidth = 42
// ;
//   double bottomBarBorderWidth = 5;
//   int currentIndex = 0;
//   List<Widget> pages = [
//     const MainScreen(),
//     const AccountScreen(),
//   ];

//   void updatePage(int page) {
//     setState(() {
//       _page = page;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           shape: CircularNotchedRectangle(),
//         ),
//         body: pages[_page],
//         bottomNavigationBar: BottomAppBar(
//           child: Row(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       currentIndex = _page;
                      
//                     });
//                   },
//                   icon: Icon(Icons.home))
//             ],
//           ),
//         ));
//   }
// }

// // BottomNavigationBar(
// //         currentIndex: _page,
// //         selectedItemColor: Colors.yellow[300],
// //         unselectedItemColor: Colors.black12,
// //         backgroundColor: Colors.white,
// //         onTap: updatePage,
// //         items: const [
// //           // HOME
// //           BottomNavigationBarItem(
// //             icon: Icon(
// //               Icons.home_outlined,
// //               size: 35,
// //             ),
// //             label: '',
// //           ),
// //           // ACCOUNT
// //           BottomNavigationBarItem(
// //             icon: Icon(
// //               Icons.person_outlined,
// //               size: 35,
// //             ),
// //             label: '',
// //           ),
// //         ],
// //       ),
