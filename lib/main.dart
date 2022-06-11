import 'package:flutter/material.dart';
import 'package:projectuas/routes/main_routes.dart';
import 'package:projectuas/pages/home_page.dart';

void main() => runApp(homepage());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: buildRouter(context),
      initialRoute: '/splash',
    );
  }
}
