import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
