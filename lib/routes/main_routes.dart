import 'package:flutter/material.dart';
import 'package:projectuas/pages/home_page.dart';
import 'package:projectuas/pages/login_page.dart';
import 'package:projectuas/pages/main_pages.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/login': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/': (context) => MainPage(),
  };
}
