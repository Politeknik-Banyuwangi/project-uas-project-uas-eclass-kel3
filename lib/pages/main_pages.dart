import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/themes/themes.dart';

class MainPage extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Home',
            icon: Icon(Icons.home),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Kelas',
            icon: Icon(Icons.assignment),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Absen',
            icon: Icon(Icons.document_scanner_outlined),
          ),
          FancyItem(
            textColor: primaryYellowColor,
            title: 'Tugas',
            icon: Icon(Icons.check_box),
          ),
        ],
        onItemSelected: (index) {
          print(index);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
    );
  }
}
