import 'package:flutter/material.dart';

import '../design_page/movie_list_screen_design.dart';
import '../login_to_dashboard/login_to_dashboard_design/dashboard_design.dart';

class BottomNavigationDesign extends StatefulWidget {
  const BottomNavigationDesign({super.key});

  @override
  State<BottomNavigationDesign> createState() => _BottomNavigationDesignState();
}

class _BottomNavigationDesignState extends State<BottomNavigationDesign> {
  List<Widget> pages = [
    const DashBoardPageMovieApp(),
    const MovieListScreenDesign(),
  ];
  int index = 0;

  void _ontap(val) {
    setState(() {
      index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videocam_sharp,
            ),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.confirmation_num,
            ),
            label: 'Live Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          )
        ],
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _ontap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
