import 'package:flutter/material.dart';
import 'package:projectuas/pages/sign_in_pages.dart';
import 'package:projectuas/themes/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavbar(int idx) {
    setState(() {
      _selectedNavbar = idx;
    });
  }

  final List<Widget> page = [
    SignInPages(),
    SignInPages(),
    SignInPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedNavbar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryYellowColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavbar,
      ),
    );
  }
}
