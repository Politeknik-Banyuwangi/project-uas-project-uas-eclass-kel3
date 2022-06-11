import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
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
                        child: Icon(
                          Icons.phone_android,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Pulsa", style: TextStyle(fontSize: 17)))
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
                          Icons.water,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("PDAM", style: TextStyle(fontSize: 17)))
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.yellow,
                        child: Icon(
                          Icons.light_sharp,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10.0), child: Text("Listrik", style: TextStyle(fontSize: 17)))
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
      ],
    ));
  }
}
