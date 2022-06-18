import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hi, Fatwa!'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/b9/0e/88/b90e88536d1fa4e543b438ea95f70316.png'),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 15),
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
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
                            textColor: Colors.green,
                            child: Text("MTK", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(20),
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
                            textColor: Colors.blue,
                            child: Text("ENG", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(20),
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
                            textColor: Colors.red,
                            child: Text("IDN", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(20),
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
                            textColor: Colors.orange,
                            child: Text("FSA", style: TextStyle(fontSize: 17)),
                            padding: EdgeInsets.all(20),
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.green,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            'Matematika',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          subtitle: Text(
                            'Bangun Ruang',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            'Bahasa Inggris',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          subtitle: Text(
                            'Simple Present',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
