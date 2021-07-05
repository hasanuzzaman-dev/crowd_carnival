import 'package:crowd_carnival/constants.dart';
import 'package:crowd_carnival/views/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SIGN IN',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),*/
      body: SignInScreen(),
    );
  }
}
