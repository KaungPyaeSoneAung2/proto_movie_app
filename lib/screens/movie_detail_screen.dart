import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/constants/item_lists.dart';
import 'package:proto_movie_app/widgets/actor_list_view.dart';
import 'package:proto_movie_app/widgets/movie_detail_text.dart';
import 'package:proto_movie_app/widgets/movie_listview.dart';
import 'package:proto_movie_app/widgets/production_list_view.dart';
import 'package:proto_movie_app/widgets/search_box.dart';

import '../widgets/actor_list_tile.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
          headerSliverBuilder: ((BuildContext context, innerBoxIsScrolled) => [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  title: const Text("Hello"),
                  expandedHeight: 500,
                  flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        "Hello",
                      ),
                      centerTitle: true,
                      background: Image.asset(
                        place_holder,
                        fit: BoxFit.cover,
                      )),
                )
              ]),
          body:  SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(kSmallPadding),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: kWarpSpacing,
                spacing: kWarpSpacing,
                children: [
                  const MovieDetailText(text: "Story Line"),
                  const Text(
                    "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(color: kTextGrey, fontSize: kMidFontSize),
                  ),
                  const MovieDetailText(text: "Cast"),
                  const ActorListView(),
                  const MovieDetailText(text: "Talent Squad"),
                  const ActorListView(),
                  const MovieDetailText(text: "Production Company"),
                  const ProductionListView(),
                  const MovieDetailText(text: "Production Company"),
                  MovieListView(movieList:  movieList)
                ],
                
              ),
            ),
          )),
    );
  }
}
