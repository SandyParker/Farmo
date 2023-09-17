import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ridesharev2/Pages/scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmo'),
        leading: Hero(
          tag: 'logo',
          child: Container(
            height: 100.0,
            child: Image.asset(
              'images/logo.png',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await availableCameras().then((value) => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Scan(cameras: value))));
              },
              child: Text("Camera"))
        ],
      ),
      bottomNavigationBar: Container(
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
      ),
    );
  }
}
