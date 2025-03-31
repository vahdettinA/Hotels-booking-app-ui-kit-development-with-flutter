import 'package:flutter/material.dart';
import 'package:hotels_booking_app/Pages/OnboardingPage/onboarding_page.dart';
import 'package:hotels_booking_app/Consts/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: white),
      debugShowCheckedModeBanner: false,
      home: const OnboardingPage(),
    );
  }
}
