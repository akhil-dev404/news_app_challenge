import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news_app/globals.dart';
import 'package:news_app/newsdata.dart';
import 'package:news_app/screens/homescreen.dart';
import 'package:news_app/screens/likes.dart';
import 'package:news_app/screens/profile.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final tabs = [Homescreen(), Likes(), Profile()];
  int _currentNav = 0;
  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: _currentNav >= 2
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  svg('4'),
                  svg('2'),
                  svg('3'),
                  svg('3'),
                  svg('5'),
                ],
              ),
            ),
      body: tabs[_currentNav],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentNav,
        type: BottomNavigationBarType.fixed,
        items: [
          baritems(
            Icons.circle_outlined,
            'Home',
            0,
            Icons.circle_rounded,
          ),
          baritems(
            Icons.favorite_border,
            'Likes',
            1,
            Icons.favorite,
          ),
          baritems(Icons.circle_outlined, 'Peoples', 2, Icons.circle),
          baritems(
            Icons.lock_outlined,
            'Settings',
            3,
            Icons.lock,
          )
        ],
        onTap: (index) {
          setState(() {
            this._currentNav = index;
            print(_currentNav);
          });
        },
      ),
    );
  }

  BottomNavigationBarItem baritems(
      IconData icondata, String str, int curindex, IconData iconData2) {
    return BottomNavigationBarItem(
      // activeIcon: new Icon(
      //   icondata,
      //   color: Colors.red,
      // ),

      icon: _currentNav == curindex
          ? IconTheme(
              data: IconThemeData(color: Color(0xff1947E5)),
              child: Icon(
                iconData2,
                color: Color(0xff1947E5),
              ))
          : Icon(
              icondata,
              color: Colors.black,
            ),
      title: Text(
        '$str',
        style: textstyle(12, FontWeight.w800, Colors.black),
      ),
    );
  }

  SvgPicture svg(String s) {
    return SvgPicture.asset(
      'assets/images/$s.svg',
      color: Colors.black,
      height: 22,
    );
  }

  showNews(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Scaffold(
            body: Expanded(
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
          ;
        });
  }
}
