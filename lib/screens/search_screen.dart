import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/widgets/search_box.dart';
import 'package:proto_movie_app/widgets/search_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          runSpacing: kWarpSpacing,
          spacing: kWarpSpacing,
          children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => Navigator.of(context).pop(),
            child: const Row(
              children: [
               Icon(
                    Icons.arrow_back_ios,
                    color: kBrightOrange,
                  
                ),
                Text("Back", style: TextStyle(color: kBrightOrange,fontSize: kMidFontSize),)
              ],
            ),
          ),
          Row(children: [SearchBox(),SizedBox(width: 20,),SearchButton()],)
          
        ]),
      ),
    );
  }
}
