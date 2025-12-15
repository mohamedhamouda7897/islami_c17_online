import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'core/app_colors.dart';
import 'core/app_styles.dart';
import 'screens/home/home_Screen.dart';

class IntroductionScreens extends StatelessWidget {
  static const String routeName = "IntroScreen";

  IntroductionScreens({super.key});

  var listPagesViewModel = [
    PageViewModel(
      titleWidget: Text("Welcome To Islmi App", style: AppStyles.titleStyle),
      body: "",
      image: Image.asset("assets/images/intro1.png"),
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islmi App", style: AppStyles.titleStyle),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        textAlign: TextAlign.center,
        style: AppStyles.bodyStyle,
      ),
      image: Image.asset("assets/images/intro2.png"),
    ),
    PageViewModel(
      titleWidget: Text("Reading the Quran", style: AppStyles.titleStyle),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        textAlign: TextAlign.center,
        style: AppStyles.bodyStyle,
      ),

      image: Image.asset("assets/images/intro3.png"),
    ),
    PageViewModel(
      titleWidget: Text("Bearish", style: AppStyles.titleStyle),

      bodyWidget: Text(
        "Praise the name of your Lord, the Most High",
        textAlign: TextAlign.center,
        style: AppStyles.bodyStyle,
      ),

      image: Image.asset("assets/images/intro4.png"),
    ),
    PageViewModel(
      titleWidget: Text("Holy Quran Radio", style: AppStyles.titleStyle),

      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: AppStyles.bodyStyle,
        textAlign: TextAlign.center,
      ),

      image: Image.asset("assets/images/intro5.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF202020),

      pages: listPagesViewModel,
      showNextButton: false,
      bodyPadding: EdgeInsets.only(top: 228),
      globalHeader: Image.asset("assets/images/islami_top.png"),
      done: Text("Done", style: AppStyles.bodyStyle),

      dotsDecorator: DotsDecorator(
        color: AppColors.grey,
        activeColor: AppColors.primary,
        activeSize: Size(18, 7),

        activeShape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      showSkipButton: true,
      skip: Text("Skip", style: AppStyles.bodyStyle),

      back: Icon(Icons.arrow_back_ios, color: AppColors.primary),
      showBackButton: true,
      onSkip: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }
}
