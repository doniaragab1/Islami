import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];


  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index + 1);
    }
    return Scaffold(
      backgroundColor: Color(0XFF202020),
      appBar: AppBar(
        backgroundColor: Color(0XFF202020),
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        title: Text(model.nameEn),
        iconTheme: IconThemeData(color: Color(0XFFE2BB7F)),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/Sura_details_bg.png",
              width: double.infinity, fit: BoxFit.fill),
          Column(
            children: [
              Text(
                model.nameAr,
                style: Theme.of(context).textTheme.bodyMedium
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8,);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                       padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: Color(0XFFE2BB7F),
                            )

                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(

                              children: [
                                TextSpan(
                                  text:
                                    "${verses[index]}",
                                  style:
                                  Theme.of(context).textTheme.bodySmall
                                ),
                                TextSpan(
                                  text:
                                  "(${index+1})",
                                  style:
                                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                  )
                                )
                              ]
                            )),
                          ));
                    },
                    itemCount: verses.length,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  loadSuraFile(int index) async {
    String file = await rootBundle.loadString("assets/files/$index.txt");

    List<String> lines = file.split("\n"); //splits at each line
    verses = lines;
    setState(() {});
  }
}
