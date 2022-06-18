import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectuas/pages/login_page.dart';
import 'package:projectuas/themes/themes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_welcome.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          color: primaryYellowColor,
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
                        color: textBlack,
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
                        color: textBlack,
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
                      maxLines: 3,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3 - 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: primaryOrangeColor,
                    ),
                    child: ElevatedButton(
                      child: Text(
                        'Lewati',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        maximumSize: Size.fromWidth(
                            MediaQuery.of(context).size.width / 3 - 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                      'SCROLL RIGHT',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 10.0,
                        letterSpacing: 4.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3 - 8.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        color: primaryOrangeColor),
                    child: ElevatedButton(
                      child: Text(
                        'Next',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        maximumSize: Size.fromWidth(
                            MediaQuery.of(context).size.width / 3 - 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
