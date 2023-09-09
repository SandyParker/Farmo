import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
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
    );
  }
}
