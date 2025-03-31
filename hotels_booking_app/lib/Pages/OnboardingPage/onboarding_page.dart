import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels_booking_app/Consts/color.dart';
import 'package:hotels_booking_app/Consts/custom_padding.dart';
import 'package:hotels_booking_app/Consts/custom_radius.dart';
import 'package:hotels_booking_app/Pages/OnboardingPage/onboarding_page_view_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with OnboardingPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: white,
                      image: DecorationImage(
                          image: AssetImage(
                              onboardingList[index]['path'].toString()),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.35,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(mediumRadius),
                                topRight: Radius.circular(mediumRadius))),
                        child: Padding(
                          padding: const EdgeInsets.all(lowPadding),
                          child: Column(
                            spacing: mediumPadding,
                            children: [
                              SmoothPageIndicator(
                                controller: pageController,
                                count: onboardingList.length,
                                effect: ExpandingDotsEffect(dotHeight: 4),
                              ),
                              Text(onboardingList[index]["title"].toString(),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                              color: black,
                                              fontWeight: FontWeight.bold))),
                              Text(onboardingList[index]["subTitle"].toString(),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: grey,
                                          ))),
                              Row(
                                mainAxisAlignment:
                                    index < onboardingList.length - 1
                                        ? MainAxisAlignment.spaceBetween
                                        : MainAxisAlignment.center,
                                children: [
                                  Visibility(
                                      visible:
                                          index < onboardingList.length - 1,
                                      child: TextButton(
                                          onPressed: () {
                                            navigatePage();
                                          },
                                          child: Text("Skip",
                                              style: GoogleFonts.poppins(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                        color: black,
                                                      ))))),
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton.icon(
                                        iconAlignment: IconAlignment.end,
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: purple,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        lowRadius))),
                                        onPressed: () {
                                          if (index <
                                              onboardingList.length - 1) {
                                            pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 200),
                                                curve: Curves.ease);
                                          } else {
                                            navigatePage();
                                          }
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: white,
                                        ),
                                        label: index < onboardingList.length - 1
                                            ? Text("Next",
                                                style: GoogleFonts.poppins(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                          color: white,
                                                        )))
                                            : Center(
                                                child: Text("Get Started",
                                                    style: GoogleFonts.poppins(
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .titleMedium
                                                                ?.copyWith(
                                                                  color: white,
                                                                ))),
                                              )),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                },
                itemCount: onboardingList.length,
                controller: pageController,
              ),
            ),
          ],
        ));
  }
}
