import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/models/sura_model.dart';

class SuraNameItem extends StatelessWidget {

  SuraModel model;

  SuraNameItem(
      {super.key,
      required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(alignment: Alignment.center, children: [
            ImageIcon(
              AssetImage("assets/images/Star.png"),
              size: 60,
              color: Colors.white,
            ),
            Text(
              "${model.index+1}",
              style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ]),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  model.nameEn,
                  style: GoogleFonts.elMessiri(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  "${model.numOfVerses} Verses",
                  style: GoogleFonts.elMessiri(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),


              ],
            ),

          ),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, SuraDetails.routeName)
              //;
            },
            child: Text(
              model.nameAr,
              style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),

        ],
      ),
    );
  }
}
