import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectuas/themes/theme.dart';

class SignInPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Gambar login
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Image(
                    image: AssetImage('assets/logo_sman.png'),
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
