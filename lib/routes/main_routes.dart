import 'package:flutter/material.dart';
import 'package:projectuas/pages/main_pages.dart';
import 'package:projectuas/pages/sign_in_pages.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/splash': (context) => MainPage(),
    '/login': (context) => SignInPages(),
  };
}
