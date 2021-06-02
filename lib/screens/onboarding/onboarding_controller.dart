import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/onboarding/onboardinginfo.dart';

class OnboardingController extends GetxController {
  var selectedIndex = 0.obs;
  bool get lastPage => selectedIndex.value == onboardingpages.length - 1;
  var pagecontroller = PageController();
  pageforward() {
    if (lastPage) {
      Get.toNamed('/welcome');
    } else {
      pagecontroller.nextPage(
          duration: Duration(microseconds: 300), curve: Curves.easeIn);
    }
  }

  List<OnboardingInfo> onboardingpages = [
    OnboardingInfo('assets/images/first.svg', 'News Everywhere',
        'It’s important that we have news everywhere. It’s critical to know its authenticity'),
    OnboardingInfo('assets/images/second.svg', 'It’s fresh and thrilling',
        'It’s very important to know that the news you consume is fresh and authentic')
  ];
}
