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
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.left,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 15),
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
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Bahasa Indonesia", style: TextStyle(fontSize: 15)))
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
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.red,
                        child: Icon(
                          Icons.health_and_safety,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Asuransi",
                            style: TextStyle(fontSize: 17),
                            textAlign: TextAlign.center,
                          ))
                    ],
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
