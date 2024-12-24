import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/sura_details/sura_details.dart';
import 'package:islami_app/home/tabs/sura_name_item.dart';
import 'package:islami_app/home/tabs/sura_name_item_horizontal.dart';
import 'package:islami_app/models/sura_model.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController.addListener(onSearch);
  }
  var searchController = TextEditingController();

  onSearch()
  {
    SuraModel.searchResult.clear();
     String text = searchController.text;
     if(text.isNotEmpty)
       {
         for(String data in SuraModel.englishQuranSurahs)
           {
             if(data.toLowerCase().contains(text.toLowerCase()))
               {
                   SuraModel.searchResult.add(data);
               }
           }
       }
     setState(() {

     });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage("assets/images/Logo.png")),
          _searchItem(),
          SuraModel.searchResult.isNotEmpty || searchController.text.isNotEmpty ?SizedBox():_suraNameHorizontalList(),
          _suraNameVertical(),


        ],
      ),
    );
  }

  Widget _suraNameVertical()
  {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suras List",
            style: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.white,
                  indent: 64,
                  endIndent: 64,
                );
              },
              itemBuilder: (context, index) {
                return SuraNameItem(
                  model:
                     searchController.text.isNotEmpty?SuraModel.getSuraModelSearch(index):
                  SuraModel.getSuraModel(index),


                );
              },
              itemCount: searchController.text.isNotEmpty? SuraModel.getSearchLength(): SuraModel.getLength(),
            ),
          )
        ],
      ),
    );
  }

  Widget _suraNameHorizontalList()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently",
          style: GoogleFonts.elMessiri(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Container(
          height: 150,
          child: Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              },
              itemBuilder: (context, index) {
                return SuraNameItemHorizontal(
                  model: SuraModel.getSuraModel(index),
            
            
                );
              },
              itemCount: SuraModel.getLength(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _searchItem()
  {
    return Column(
      children: [
        TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "Sura Name",
            hintStyle: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0XFFE2BE7F))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0XFFE2BE7F))),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0XFFE2BE7F))),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0XFFE2BE7F))),
            prefixIcon: ImageIcon(
              AssetImage("assets/images/quran-svgrepo-com 1.png"),
              color: Color(0XFFE2BE7F),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
