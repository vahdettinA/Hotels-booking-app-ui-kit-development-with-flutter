import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels_booking_app/Consts/color.dart';
import 'package:hotels_booking_app/Consts/custom_padding.dart';
import 'package:hotels_booking_app/Consts/custom_radius.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              child: Column(
                spacing: lowPadding,
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
                  )
                ],
              ),
            )
          ],
        ));
  }
}
