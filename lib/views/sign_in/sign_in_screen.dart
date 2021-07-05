import 'package:crowd_carnival/constants.dart';
import 'package:crowd_carnival/size_config.dart';
import 'package:crowd_carnival/views/sign_in/sign_in_form.dart';
import 'package:crowd_carnival/views/sign_up/personal_information.dart';
import 'package:crowd_carnival/views/splash/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(40)),
              Text('Welcome to \nCROWD CARNIVAL',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              Text(
                "Sign in with your phone number and password \nor register",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SignInForm(),

              SizedBox(height: getProportionateScreenHeight(20)),
              RichText(
                textScaleFactor: 1.2,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'Don\'t have an account? '),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PersonalInformation()),
                          );
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              RichText(
                textScaleFactor: 1.2,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'Don\'t verified yet? '),
                    TextSpan(
                      text: 'Verified',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
