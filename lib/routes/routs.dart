import 'package:crowd_carnival/splash/splash_screen.dart';
import 'package:crowd_carnival/views/welcome_screen.dart';
import 'package:flutter/cupertino.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};
