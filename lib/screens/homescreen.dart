import 'package:flutter/material.dart';

import '../globals.dart';
import '../newsdata.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: newsdata.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  // showNews(context);
                },
                child: Container(
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(spreadRadius: 2, offset: Offset(0.0, 1))
                    ],
                    border: Border.all(color: Colors.black, width: 2),
                    color: Color(0xffE9E7FC),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 32,
                        left: 24,
                        child: Text(
                          'by ${newsdata[index].author} . ${newsdata[index].date}',
                          style:
                              textstyle(12, FontWeight.w700, Color(0xff474A57)),
                        ),
                      ),
                      Positioned(
                        top: 56,
                        left: 24,
                        right: 24,
                        child: Text(
                          '${newsdata[index].headline}',
                          style:
                              textstyle(24, FontWeight.w800, Color(0xff18191F)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
