import 'package:crowd_carnival/size_config.dart';
import 'package:crowd_carnival/views/sign_in/sign_in_form.dart';
import 'package:crowd_carnival/views/splash/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Welcome to \nCROWD CARNIVAL',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SignInForm(),
              DefaultButton(
                text: 'SignIn',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
