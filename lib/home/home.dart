import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage("assets/images/${imageBg(currentindex)}"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0XFFE2BE7F),
          currentIndex: currentindex,
          onTap: (value) {
            currentindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: _buildNavItem("Vector", 0), label: "Quran"),
            BottomNavigationBarItem(
                icon: _buildNavItem("book-album", 1), label: "Hadith"),
            BottomNavigationBarItem(
                icon: _buildNavItem("necklace", 2), label: "Sibha"),
            BottomNavigationBarItem(
                icon: _buildNavItem("radio_nav", 3), label: "Radio"),
            BottomNavigationBarItem(
                icon: _buildNavItem("Time", 4), label: "Time"),
          ],
        ),
        body: tabs[currentindex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    RadioTab(),
    TimeTab(),
    SebhaTab()
  ];

  String imageBg(int index) {
    switch (index) {
      case 0:
        return "Background.png";
      case 1:
        return "Hadith_bg.png";
      case 2:
        return "Sibha_bg.png";
      case 3:
        return "Radio_bg.png";
      default:
        return "Background.png";
    }
  }

  Widget _buildNavItem(String image, int index) {
    return currentindex == index
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0XFF202020),
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(
              AssetImage("assets/images/${image}.png"),
              color: Colors.white,
            ),
          )
        : ImageIcon(AssetImage("assets/images/${image}.png"));
  }
}
