import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/pages/absensi_pages.dart';
import 'package:projectuas/pages/home_page.dart';
import 'package:projectuas/services/users.dart';
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
  Users user1 = Users("siswa@gmail.com", "215211", "215211");

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
            textColor: primaryYellowColor,
            title: 'Home',
            icon: Icon(Icons.home_rounded),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Kelas',
            icon: Icon(Icons.groups_rounded),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Absen',
            icon: Icon(Icons.document_scanner_outlined),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Tugas',
            icon: Icon(Icons.import_contacts_rounded),
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
