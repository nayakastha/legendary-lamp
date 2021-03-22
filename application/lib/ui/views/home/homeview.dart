import 'package:application/ui/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Text(
          "HomeView",
          style: TextStyle(color: secondaryColor),
        ),
      ),
    );
  }
}
