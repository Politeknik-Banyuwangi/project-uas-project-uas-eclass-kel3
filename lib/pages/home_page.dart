import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Kelasku",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 10),
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
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.c,
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
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  )),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Daftar Tugas",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Container(
                  height: 120,
                  width: 330,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text('Matematika'),
                          subtitle: Text('Bangun Ruang'),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
