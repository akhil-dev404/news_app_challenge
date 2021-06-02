import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/onboarding/onboarding_controller.dart';

class Onboardingscreen extends StatelessWidget {
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      PageView.builder(
          controller: controller.pagecontroller,
          onPageChanged: controller.selectedIndex,
          itemCount: controller.onboardingpages.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    height: hsize * 0.55,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: SvgPicture.asset(
                          '${controller.onboardingpages[index].image}',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        )
                        // Image(
                        //   height: hsize * 0.30,
                        //   width: double.infinity,
                        //   fit: BoxFit.contain,
                        //   image: AssetImage('assets/images/second.png'),
                        ),
                  ),

                  // ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              width: 250,
                              child: Text(
                                  '${controller.onboardingpages[index].text}',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w800)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                child: Text(
                                    '${controller.onboardingpages[index].content}',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500))),
                          )
                        ],
                      )),
                ],
              ),
            );
          }),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          // child: Expanded(
          //   flex: 1,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Row(
                        children: List.generate(
                      controller.onboardingpages.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Obx(() {
                          return Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: controller.selectedIndex.value == index
                                    ? const Color(0xffFFBD12)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                          );
                        }),
                      ),
                    )),
                  ),
                ),
                Container(
                  child: RawMaterialButton(
                    onPressed: () {
                      controller.pageforward();
                    },
                    elevation: 5.0,
                    fillColor: const Color(0xffFFBD12),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 40,
                    ),
                    padding: const EdgeInsets.all(7),
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // )
    ]));
  }
}
