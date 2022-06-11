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
                        textColor: Colors.green,
                        child: Text("MTK", style: TextStyle(fontSize: 17)),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Matematika", style: TextStyle(fontSize: 17)))
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
                        child: Icon(
                          Icons.gamepad,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Game", style: TextStyle(fontSize: 17)))
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
                        child: Icon(
                          Icons.money_outlined,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Donasi", style: TextStyle(fontSize: 17)))
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
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Asuransi", style: TextStyle(fontSize: 17)))
                    ],
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
