import 'package:flutter/material.dart';
import 'package:islami_c17_online/screens/home/home_Screen.dart';
import 'package:islami_c17_online/introduction_screen.dart';
import 'package:islami_c17_online/screens/sura_details/sura_details_screen.dart';

/// Native splash screen IOS : Farah
/// Native splash screen Android : Abdullah
/// splash screen Timer : Sohaila

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroductionScreens.routeName,
      routes: {
        IntroductionScreens.routeName: (context) => IntroductionScreens(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
