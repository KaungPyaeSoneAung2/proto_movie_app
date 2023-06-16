import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/model/movie.dart';
import 'package:proto_movie_app/widgets/cached_net_imagewgradient.dart';
import 'package:proto_movie_app/widgets/play_button.dart';

class Carousel extends StatelessWidget {
  const Carousel(
      {super.key, required this.movieList, required this.playButtonPresent});
  final bool playButtonPresent;
  final List<Movie> movieList;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Stack(
              children: [
                CachedNetImageWGradient(imageUrl: movieList[itemIndex].image),
                (playButtonPresent)
                    ? const Center(child: PlayButton())
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                        movieList[itemIndex].name,
                        style: const TextStyle(
                            fontSize: kBigFontSize,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ))
              ],
            ),
        options: CarouselOptions(
          height: kCarouselHeight,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          autoPlay: false,

        ));
  }
}
