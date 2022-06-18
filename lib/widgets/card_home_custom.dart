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
        child: Container(
          height: 200,
          width: double.infinity,
          child: Card(
            color: colors,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: textWhiteGrey,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: textWhiteGrey,
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
