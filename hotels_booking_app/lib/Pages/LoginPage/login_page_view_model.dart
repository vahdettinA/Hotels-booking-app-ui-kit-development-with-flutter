import 'package:flutter/material.dart';
import 'package:hotels_booking_app/Pages/LoginPage/login_page.dart';

mixin LoginPageViewModel on State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool checkInput = false;

  void checkInputMethod() {
    setState(() {
      checkInput = emailController.text != "" && passwordController.text != ""
          ? true
          : false;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(checkInputMethod);
    passwordController.addListener(checkInputMethod);
  }
}
