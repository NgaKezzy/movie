import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';
import 'package:project_watch_movie/ui/favorite_page.dart';
import 'package:project_watch_movie/ui/home_page.dart';
import 'package:project_watch_movie/ui/ticket_page.dart';
import 'package:project_watch_movie/ui/transfer_page.dart';
import 'package:project_watch_movie/ui/user_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _bottomNavIndex = 0;
  // List<bool> _isSelected = [true, false, false];
  List<Widget> pages = const [
    HomePage(),
    FavoritePage(),
    TicketPage(),
    UserPage(),
    TransferPage(),
  ];
  List<IconData> iconsList = [
    Icons.home,
    Icons.favorite,
    Icons.local_activity,
    Icons.account_circle,
    Icons.shuffle
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Constants.secondaryColor,
        splashColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Colors.white.withOpacity(.6),
      icons: iconsList,
        activeIndex: _bottomNavIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        onTap: (index) {
          setState(() {
            
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
