import 'package:_tiktok_clone_app/constants.dart';
import 'package:_tiktok_clone_app/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pgIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[pgIdx],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              pgIdx = index;
            });
          },
          backgroundColor: backgroundColor,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: pgIdx,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: "Search"),
            BottomNavigationBarItem(icon: CustomIcon(), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  size: 30,
                ),
                label: "message"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: "profile"),
          ]),
    );
  }
}
