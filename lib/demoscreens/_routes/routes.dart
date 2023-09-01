import 'package:ecommerce/demoscreens/CategoryScreen/categoryScreen.dart';
import 'package:ecommerce/demoscreens/homeScreen/home_screen.dart';
import 'package:ecommerce/demoscreens/loginscreen/login_screen.dart';
import 'package:flutter/widgets.dart';

import '../SplashScreen/splash_screen.dart';

late final String baseUrl;

late final String token;

late final Map<String, WidgetBuilder> routes = {
  splashScreen.routeName: (context) => splashScreen(),
  homeScreen.routeName: (context) => homeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(
        baseUrl: baseUrl,
        token: token,
      ),
  CategoryScreen.routeName: (context) => CategoryScreen(),
};
