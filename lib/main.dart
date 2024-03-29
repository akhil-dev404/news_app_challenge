import 'package:flutter/material.dart';
import 'package:news_app/screens/onboarding/onboardingfirst.dart';
import 'package:news_app/routes.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/onboard',
      getPages: routes,
    );
  }
}
