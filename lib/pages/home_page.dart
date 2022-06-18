import 'package:flutter/material.dart';
import 'package:projectuas/themes/themes.dart';
import 'package:projectuas/widgets/card_home_custom.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryYellowColor,
          title: Text('Hi, Fatwa!', style: TextStyle(color: textBlack)),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/b9/0e/88/b90e88536d1fa4e543b438ea95f70316.png'),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  "Kelasku",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: textGrey,
                            child: Text("MTK", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Matematika",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: textGrey,
                            child: Text("ENG", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Bahasa Inggris",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: textGrey,
                            child: Text("IDN", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Bahasa Indonesia",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: textGrey,
                            child: Text("FSA", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(30),
                            shape: CircleBorder(),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Fisika",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      )),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text(
                  "Daftar Tugas",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )),
            CardHomeCustom(
              title: 'Matematika',
              subtitle: 'Matematika Aljabar',
              colors: primaryOrangeColor,
            ),
            CardHomeCustom(
              title: 'Bahasa Inggris',
              subtitle: 'Simple Present',
              colors: primaryDarkBlueColor,
            ),
          ],
        ));
  }
}
