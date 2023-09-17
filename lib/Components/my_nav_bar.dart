import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade700,
          padding: EdgeInsets.all(16),
          gap: 10,
          onTabChange: (index) {
            print(index);
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'home',
            ),
            GButton(
              icon: Icons.camera_alt,
              text: 'scan',
            ),
            GButton(
              icon: Icons.comment,
              text: 'comments',
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              text: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
