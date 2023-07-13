import 'package:flutter/material.dart';
import 'package:metrdev/features/auth/view/page/login.dart';
import 'package:metrdev/features/home/view/page/home_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login';
  static const String homeScreen = '/home';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      AppRoutes.loginScreen: (context) => const LoginScreen(),
      AppRoutes.homeScreen: (context) => const HomeScreen()
    };
  }
}
