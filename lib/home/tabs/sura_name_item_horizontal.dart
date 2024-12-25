import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/models/sura_model.dart';

class SuraNameItemHorizontal extends StatelessWidget {

  SuraModel model;

  SuraNameItemHorizontal(
      {super.key,
        required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),color: Color(0XFFE2B37F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 16,
          ),
          Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                model.nameEn,
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                model.nameAr,
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                "${model.numOfVerses}",
                style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(width: 20,),
          Image.asset("assets/images/Surah_list.png")
        ],
      ),
    );
  }
}
