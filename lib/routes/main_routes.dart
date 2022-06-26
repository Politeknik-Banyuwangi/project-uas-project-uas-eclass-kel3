import 'package:flutter/material.dart';
import 'package:projectuas/pages/absensi_pages.dart';
import 'package:projectuas/pages/home_page.dart';
import 'package:projectuas/pages/login_page.dart';
import 'package:projectuas/pages/main_pages.dart';
import 'package:projectuas/pages/onboarding_page.dart';

Map<String, WidgetBuilder> buildRouter(BuildContext context) {
  return {
    '/login': (context) => LoginPage(),
    '/home': (context) => MainPage(),
    '/absen': (context) => AbsensiPages(),
    '/daftar-tugas': (context) => MainPage(),
    '/daftar-kelas': (context) => MainPage(),
    '/': (context) => OnboardingPage(),
  };
}
