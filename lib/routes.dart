import 'package:get/get.dart';
import 'package:news_app/homepage.dart';
import 'package:news_app/news_page.dart';
import 'package:news_app/screens/likes.dart';
import 'package:news_app/screens/login.dart';
import 'package:news_app/screens/onboarding/onboardingfirst.dart';
import 'package:news_app/screens/register.dart';
import 'package:news_app/screens/welcome.dart';
import 'package:news_app/screens/splash.dart';

var routes = [
  GetPage(name: '/', page: () => SplashScreen()),
  GetPage(
    name: '/onboard',
    page: () => Onboardingscreen(),
  ),
  GetPage(name: '/welcome', page: () => Welecome()),
  GetPage(name: '/login', page: () => Login()),
  GetPage(name: '/register', page: () => Register()),
  GetPage(name: '/home', page: () => Homepage()),
  GetPage(name: '/newspage', page: () => Newspage()),
  GetPage(name: '/likes', page: () => Likes()),
];
