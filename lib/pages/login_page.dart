import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectuas/services/users.dart';
import 'package:projectuas/themes/themes.dart';
import 'package:projectuas/widgets/custom_check_box.dart';
import 'package:projectuas/widgets/show_snackbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  bool passwordConfirmVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void passwordIsEmpty(String text) {
    if (passwordController.text == '' || text == '') {
      showSnackBar(context, "Password tidak boleh kosong");
    }
  }

  void usernameIsEmpty(String text) {
    if (usernameController.text == '' || text == '') {
      showSnackBar(context, "Username tidak boleh kosong");
    }
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
                    controller: usernameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_rounded),
                      hintText: 'Username',
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
                    controller: passwordController,
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
              child: Material(
                borderRadius: BorderRadius.circular(14),
                elevation: 0,
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: primaryYellowColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () async {
                        // check apakah field username dan password kosong
                        if (usernameController.text == "") {
                          showSnackBar(context, "username tidak boleh kosong");
                        } else if (passwordController.text == "") {
                          showSnackBar(context, "Password tidak boleh kosong");
                        } else {
                          // Autentikasi input dengan user dari API
                          var data = {
                            'username': usernameController.text,
                            'password': passwordController.text,
                          };
                          // memanggil service API kemudian ditampung ke dalam variabel reponse dalam bentuk byte
                          var response = await UsersServices().connectAPI(data);
                          // data response diubah ke dalam json dari konversi byte to string kemudian ditampung ke dalam varibel body
                          var body =
                              jsonDecode(await response.stream.bytesToString());
                          print(jsonEncode(body['data']));
                          if (response.statusCode == 200) {
                            Navigator.pushNamed(context, '/home');
                          } else {
                            showSnackBar(context, body['message']);
                          }
                        }
                      },
                      borderRadius: BorderRadius.circular(14),
                      child: Center(
                        child: Text(
                          'Login',
                          style: heading5.copyWith(color: textBlack),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
