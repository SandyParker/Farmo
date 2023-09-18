import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ridesharev2/Components/my_nav_bar.dart';
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
          child: Container  (
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
      bottomNavigationBar: MyNavBar(),
    );
  }
}
