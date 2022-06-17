import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectuas/themes/theme.dart';
import 'package:projectuas/widgets/custom_button.dart';
import 'package:projectuas/widgets/custom_check_box.dart';

class SignInPages extends StatefulWidget {
  const SignInPages({Key? key}) : super(key: key);

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool passwordVisible = false;
  bool passwordConfirmVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

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
                    image: AssetImage('assets/logo_sman_1_cluring.png'),
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'SMAN 1 CLURING',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: ListTile(
                    title: Text(
                      'Let’s get started.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Absensi dengan menggunakan \n QRCode dan lokasi',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 55,
          ),
          // Form Login
          Form(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                      color: textWhiteGrey,
                      borderRadius: BorderRadius.circular(14)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_rounded),
                      hintText: 'Email',
                      hintStyle: heading6.copyWith(color: textGrey),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    color: textWhiteGrey,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextFormField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_rounded),
                      hintText: 'Password',
                      hintStyle: heading6.copyWith(color: textGrey),
                      suffixIcon: IconButton(
                        color: textGrey,
                        splashRadius: 1,
                        icon: Icon(passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        onPressed: togglePassword,
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomCheckbox(),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Remember me',
                        style: regular16pt,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 32,
          ),
          Center(
            child: Container(
              width: 146.0,
              height: 48.0,
              child: CustomPrimaryButton(
                buttonColor: primaryYellowColor,
                textValue: 'Login',
                textColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
