import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectuas/widgets/onboarding_1.dart';
import 'package:projectuas/widgets/onboarding_2.dart';
import 'package:projectuas/widgets/onboarding_3.dart';

class OnboardingPage extends StatefulWidget {
  String initialRoute = '/';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<Widget> onboardingPage = [
    Onboarding1(),
    Onboarding2(),
    Onboarding3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: double.infinity,
          autoPlay: false,
          viewportFraction: 1,
          enableInfiniteScroll: false,
        ),
        items: [1, 2, 3].map((i) {
          int count = int.parse('$i');
          return onboardingPage[count - 1];
        }).toList(),
      ),
    );
  }
}
