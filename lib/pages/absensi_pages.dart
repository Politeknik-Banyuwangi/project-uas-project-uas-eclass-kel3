import 'package:flutter/material.dart';
import 'package:projectuas/themes/themes.dart';

class AbsensiPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(50),
            child: Column(children: [
              Image.asset('assets/gambar_absen.png'),
              Text(
                'Yukk Absen!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: primaryYellowColor),
              ),
              Text(
                'Scan QR Code yang ada pada website \n dan wholaa kamu berhasil absen!',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.grey),
              ),
              SizedBox(
                height: 44,
              ),
              Material(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(color: primaryYellowColor, borderRadius: BorderRadius.circular(30)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(30),
                        child: Center(
                          child: Text(
                            'Mulai Absen!',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ))
            ])));
  }
}
