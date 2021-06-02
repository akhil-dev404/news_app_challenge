import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/globals.dart';

class Newspage extends StatefulWidget {
  const Newspage({Key? key}) : super(key: key);

  @override
  _NewspageState createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(
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
                  child: Icon(Icons.close),
                ),
              ),
            ),
            Text(
              'This is a news headline and you noticed',
              style: textstyle(37, FontWeight.w700, Color(0xff18191f)),
            ),
          ],
        ),
      ),
    );
  }
}
