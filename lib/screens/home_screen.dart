import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/constants/item_lists.dart';
import 'package:proto_movie_app/widgets/carousel.dart';
import 'package:proto_movie_app/widgets/category_listview.dart';
import 'package:proto_movie_app/widgets/movie_listview.dart';
import 'package:proto_movie_app/widgets/search_box.dart';
import 'package:proto_movie_app/widgets/search_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kSmallPadding),
        child: Wrap(
            spacing: kWarpSpacing,
            runSpacing: kWarpSpacing,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SearchBox(),SearchButton()
                ],
              ),
              const CategoryListView(),
              Carousel(movieList: movieList,playButtonPresent: true),
              const Text("You May Like", style: TextStyle(fontSize: kBigFontSize, color: Colors.white, fontWeight: FontWeight.bold),),
              MovieListView( movieList: movieList),
              const Text("Popular", style: TextStyle(fontSize: kBigFontSize, color: Colors.white, fontWeight: FontWeight.bold),),
              MovieListView( movieList: movieList),
              Carousel(movieList: movieList, playButtonPresent: false, )
              ]
          ),
      ),
      )
    ;
  }
}
