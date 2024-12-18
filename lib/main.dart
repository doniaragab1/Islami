import 'package:flutter/material.dart';
import 'package:islami_app/on_boarding_screen.dart';

import 'home/home.dart';
import 'home/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       OnBoardingScreen.routeName : (context) =>  OnBoardingScreen(),
        HomeScreen.routeName : (context) =>  HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails(),

      },
      initialRoute: "/",
    );
  }
}

