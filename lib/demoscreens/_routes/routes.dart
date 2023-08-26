import 'package:ecommerce/demoscreens/CategoryScreen/categoryScreen.dart';
import 'package:ecommerce/demoscreens/homeScreen/home_screen.dart';
import 'package:ecommerce/demoscreens/loginscreen/login_screen.dart';
import 'package:flutter/widgets.dart';

import '../SplashScreen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  splashScreen.routeName: (context) => splashScreen(),
  homeScreen.routeName: (context) => homeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
};
