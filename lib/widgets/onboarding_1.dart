import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectuas/pages/login_page.dart';
import 'package:projectuas/themes/themes.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_welcome.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        color: primaryLightBlueColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 240,
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 150.0),
                    child: Image(
                      image: AssetImage('assets/logo_sman_1_cluring.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14.0),
                  alignment: Alignment.center,
                  child: Text(
                    "SMAN 1 CLURING",
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: textWhite,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 63.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: textWhite,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  alignment: Alignment.center,
                  child: Text(
                    "aplikasi pembelajaran secara online yang dapat digunakan untuk membantu semua ruang lingkup pendidikan",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: textWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    'SCROLL RIGHT',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 10.0,
                      letterSpacing: 4.0,
                      color: textWhite,
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: primaryYellowColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Center(
                          child: Text(
                            'Lewati',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
