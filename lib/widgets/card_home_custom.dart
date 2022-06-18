import 'package:flutter/material.dart';
import 'package:projectuas/themes/themes.dart';

class CardHomeCustom extends StatelessWidget {
  final String title, subtitle;
  final Color colors;
  const CardHomeCustom({this.title = '', this.subtitle = '', this.colors = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Card(
          child: Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colors,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: textWhiteGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: textWhiteGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
