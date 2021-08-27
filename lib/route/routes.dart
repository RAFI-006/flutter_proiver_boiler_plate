import 'package:flutter/material.dart';
import 'package:flutterproviderboilerplate/view/login_view.dart';
import 'package:flutterproviderboilerplate/view/splash_view.dart';
import 'package:flutter/cupertino.dart';

//This class is used for easy Navigation
class Routes {
  static const String login = "/login";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreenView());

      case login:
        return MaterialPageRoute(builder: (_) => LoginView());

      default:
        return MaterialPageRoute(builder: (_) => SplashScreenView());
    }
  }
}
