
import 'package:crowd_carnival/views/splash/splash_screen.dart';
import 'package:crowd_carnival/views/sign_in/welcome_screen.dart';
import 'package:flutter/cupertino.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};
