import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../globals.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              alignment: FractionalOffset(0.10, 0),
              child: Text(
                'Login',
                style: textstyle(36, FontWeight.w800, Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 10),
              child: Text(
                'You don’t think you should login first and behave like human not robot.',
                style: textstyle(17, FontWeight.w500, Color(0xff474A57)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration:
                      inputdecoration('Email address', Icons.person_outline)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                  obscureText: true,
                  decoration: inputdecoration('Password', Icons.lock_outline)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  elevation: 20,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16)),
                  height: 60,
                  color: Color(0xffFFBD12),
                  child: Text('Sign in',
                      style: textstyle(
                        21,
                        FontWeight.w800,
                        Color(0xff18191f),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    'You are new?',
                    style: textstyle(13, FontWeight.w700, Color(0xff18191f)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/register');
                    },
                    child: Text('Crete new',
                        style: textstyle(
                          13,
                          FontWeight.w700,
                          Colors.red,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
