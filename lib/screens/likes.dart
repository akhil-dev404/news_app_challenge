import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/globals.dart';

import '../newsdata.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   centerTitle: true,
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       svg('4'),
        //       svg('2'),
        //       svg('3'),
        //       svg('3'),
        //       svg('5'),
        //     ],
        //   ),
        // ),
        Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Your Favs',
              style: textstyle(36, FontWeight.w800, Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Text(
            'These are some of the posts that you’ve liked! Go on and add more.',
            style: textstyle(17, FontWeight.w500, Color(0xff474A57)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: newsdata.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                              style: textstyle(
                                  12, FontWeight.w700, Color(0xff474A57)),
                            ),
                          ),
                          Positioned(
                            top: 56,
                            left: 24,
                            right: 24,
                            child: Text(
                              '${newsdata[index].headline}',
                              style: textstyle(
                                  24, FontWeight.w800, Color(0xff18191F)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentNav,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           baritems(
//             Icons.circle_outlined,
//             'Home',
//             0,
//             Icons.circle_rounded,
//           ),
//           baritems(
//             Icons.favorite_border,
//             'Likes',
//             1,
//             Icons.favorite,
//           ),
//           baritems(Icons.circle_outlined, 'Peoples', 2, Icons.circle),
//           baritems(
//             Icons.lock_outlined,
//             'Settings',
//             3,
//             Icons.lock,
//           )
//         ],
//         onTap: (index) {
//           setState(() {
//             this._currentNav = index;
//             print(_currentNav);
//           });
//         },
//       ),,
//     );
//   }

//   SvgPicture svg(String s) {
//     return SvgPicture.asset(
//       'assets/images/$s.svg',
//       color: Colors.black,
//       height: 22,
//     );
//   }
// }
