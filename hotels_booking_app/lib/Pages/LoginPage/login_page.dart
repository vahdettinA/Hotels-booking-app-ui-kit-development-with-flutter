import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels_booking_app/Consts/color.dart';
import 'package:hotels_booking_app/Consts/custom_padding.dart';
import 'package:hotels_booking_app/Consts/custom_radius.dart';
import 'package:hotels_booking_app/Pages/LoginPage/login_page_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: white,
          surfaceTintColor: white,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(highPadding),
                child: Column(
                  spacing: highPadding,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "live Green",
                      style: GoogleFonts.poppins(
                          textStyle:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: purple,
                                  )),
                    ),
                    Text(
                      "Let's get you login",
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color: black, fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "Enter your information below",
                      style: GoogleFonts.poppins(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: grey)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                overlayColor: white,
                                foregroundColor: black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(lowRadius)),
                                side: BorderSide(width: 1, color: black)),
                            onPressed: () {},
                            child: Text("Google")),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                overlayColor: white,
                                foregroundColor: black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(lowRadius)),
                                side: BorderSide(width: 1, color: black)),
                            onPressed: () {},
                            child: Text("Facebook")),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: mediumPadding),
                      child: Column(
                        spacing: mediumPadding,
                        children: [
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius),
                                  borderSide: BorderSide(
                                      color: checkInput ? purple : grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius),
                                  borderSide: BorderSide(
                                      color: checkInput ? purple : grey)),
                            ),
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius),
                                  borderSide: BorderSide(
                                      color: checkInput ? purple : grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(mediumRadius),
                                  borderSide: BorderSide(
                                      color: checkInput ? purple : grey)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password")),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(lowRadius)),
                                  backgroundColor: checkInput ? purple : grey),
                              onPressed: checkInput ? () {} : null,
                              child: Center(child: Text("Login")))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
