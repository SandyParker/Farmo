import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CameraButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget icon;

  const CameraButton(
      {super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      iconSize: 30,
      icon: icon,
      onPressed: onTap,
    );
  }
}