import 'package:flutter/material.dart';
import 'package:proto_movie_app/model/movie.dart';
import 'movie_item.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({super.key, required this.movieList});
final List<Movie> movieList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: 500,
                  height: 260,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: MovieItem(name: movieList[index].name ,img: movieList[index].image,rating: movieList[index].rating,voteAmount: movieList[index].mention),
                      );
                    }
                  ),
              );
  }
}