import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../globals.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () => Get.back(),
              child: Container(
                alignment: FractionalOffset(0.7, 0.5),
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    // boxShadow: [BoxShadow(spreadRadius: 3)],
                    border: Border.all(color: Colors.black, width: 2),
                    shape: BoxShape.circle),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            alignment: FractionalOffset(0.10, 0),
            child: Text(
              'Sign Up',
              style: textstyle(36, FontWeight.w800, Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 10),
          child: Text(
            'You have chance to create new account if you really want to.',
            style: textstyle(17, FontWeight.w500, Color(0xff474A57)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
              decoration: inputdecoration('Full Name', Icons.person_outline)),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: inputdecoration(
                'Email address',
                Icons.email_outlined,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: TextField(
              obscureText: true,
              decoration: inputdecoration('Password', Icons.lock_outline)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MaterialButton(
              onPressed: () {
                Get.toNamed('/login');
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
              child: Text('Sign Up',
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
                'Already have account? ',
                style: textstyle(13, FontWeight.w700, Color(0xff18191f)),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/login');
                },
                child: Text('Go here',
                    style: textstyle(
                      13,
                      FontWeight.w700,
                      Colors.red,
                    )),
              )
            ],
          ),
        )
      ])),
    );
  }
}
