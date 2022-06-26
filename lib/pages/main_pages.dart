import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/pages/absensi_pages.dart';
import 'package:projectuas/pages/home_page.dart';
import 'package:projectuas/themes/themes.dart';

class MainPage extends StatefulWidget {
  String initalRoute = '/home';
  MainPage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final List<Widget> page = [
    HomePage(),
    HomePage(),
    AbsensiPages(),
    AbsensiPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_counter],
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: primaryDarkBlueColor,
            title: 'Home',
            icon: Icon(
              Icons.home_rounded,
              color: textGrey,
              size: 30.0,
            ),
          ),
          FancyItem(
            textColor: primaryDarkBlueColor,
            title: 'Kelas',
            icon: Icon(
              Icons.groups_rounded,
              color: textGrey,
              size: 30.0,
            ),
          ),
          FancyItem(
            textColor: primaryDarkBlueColor,
            title: 'Absen',
            icon: Icon(
              Icons.document_scanner_outlined,
              color: textGrey,
              size: 30.0,
            ),
          ),
          FancyItem(
            textColor: primaryDarkBlueColor,
            title: 'Tugas',
            icon: Icon(
              Icons.import_contacts_rounded,
              color: textGrey,
              size: 30.0,
            ),
          ),
        ],
        onItemSelected: (index) {
          setState(() {
            _counter = index;
          });
          print(_counter);
        },
      ),
    );
  }
}
