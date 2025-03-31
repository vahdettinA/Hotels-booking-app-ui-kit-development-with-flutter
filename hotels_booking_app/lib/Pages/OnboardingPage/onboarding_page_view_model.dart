import 'package:flutter/material.dart';
import 'package:hotels_booking_app/Pages/LoginPage/login_page.dart';
import 'package:hotels_booking_app/Pages/OnboardingPage/onboarding_page.dart';

mixin OnboardingPageViewModel on State<OnboardingPage> {
  final List<Map<String, String>> onboardingList = [
    {
      "id": "1",
      "path": "assets/onboarding_img1.png",
      "title": "Easy way to book\nhotels with us",
      "subTitle":
          "It is a long established fact that a reader will be distracted by the readable content."
    },
    {
      "id": "2",
      "path": "assets/onboarding_img2.png",
      "title": "Discover and find your\nperfect healing place",
      "subTitle":
          "It is a long established fact that a reader will be distracted by the readable content."
    },
    {
      "id": "3",
      "path": "assets/onboarding_img3.png",
      "title": "Giving the best deal\njust for you",
      "subTitle":
          "It is a long established fact that a reader will be distracted by the readable content."
    },
  ];
  final PageController pageController = PageController();

  void navigatePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
