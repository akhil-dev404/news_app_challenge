import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/globals.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    return Container(
        height: hsize - 50,
        width: double.infinity,
        color: Color(0xffF95A2C),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                alignment: FractionalOffset(0.5, 0),
                // color: Colors.transparent,
                // height: 100,
                child: SvgPicture.asset(
                  'assets/images/second.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(spreadRadius: 3, offset: Offset(0.2, 3))
                    ],
                    border: Border.all(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    color: Colors.white),
                height: hsize * .40,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 6,
                        width: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 40),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Me this is me',
                            style: textstyle(
                                17, FontWeight.w700, Color(0xff00C6AE)),
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Genbai Benno',
                            style: textstyle(36, FontWeight.w800, Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF95A2C),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text(
                        'This is going to be a small description about you here, dont have to store it anywhere, just static placement',
                        style: textstyle(21, FontWeight.w500, Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
