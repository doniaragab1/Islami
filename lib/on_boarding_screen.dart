import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:islami_app/home/home.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "/";

  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OnBoardingSlider(
        onFinish: (){
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        headerBackgroundColor: Color(0XFF202020),
        finishButtonText: 'Home',
        pageBackgroundColor: Color(0XFF202020),
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Color(0XFFE2BE75),
        ),
        skipTextButton: Text('Skip',
            style: TextStyle(
                color: Color(0XFFE2BE75),
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        trailing: Text('Login'),
        background: [
          Image.asset('assets/images/On_boarding1.png'),
          Image.asset('assets/images/OnBoarding_2.png'),
          Image.asset('assets/images/welcome.png'),
          Image.asset('assets/images/bearish.png'),
          Image.asset('assets/images/radio.png'),
        ],
        totalPage: 5,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Welcome To Islami',
                  style: TextStyle(
                      color: Color(0XFFE2BE75),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Welcome To Islami',
                    style: TextStyle(
                        color: Color(0XFFE2BE75),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 24,
                ),
                Text('We Are Very Excited To Have You In Our Community',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFFE2BE75),
                        fontSize: 24,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Reading the Quran',
                    style: TextStyle(
                        color: Color(0XFFE2BE75),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Bearish',
                    style: TextStyle(
                        color: Color(0XFFE2BE75),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Holy Quran Radio',
                    style: TextStyle(
                        color: Color(0XFFE2BE75),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
