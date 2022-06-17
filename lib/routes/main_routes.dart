import 'package:flutter/material.dart';
import 'package:projectuas/pages/sign_in_pages.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/login': (context) => SignInPages(),
  };
}
