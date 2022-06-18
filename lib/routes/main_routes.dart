import 'package:flutter/material.dart';
import 'package:projectuas/pages/login_page.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/login': (context) => LoginPage(),
  };
}
