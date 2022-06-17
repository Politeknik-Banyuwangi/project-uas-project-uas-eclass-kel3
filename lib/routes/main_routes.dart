import 'package:flutter/material.dart';
import 'package:projectuas/pages/absensi_pages.dart';
import 'package:projectuas/pages/main_pages.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/page': (context) => MainPage(),
    '/login': (context) => AbsensiPages(),
  };
}
