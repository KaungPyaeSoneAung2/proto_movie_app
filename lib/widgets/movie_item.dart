import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/widgets/cached_net_imagewgradient.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key,required this.name, required this.img, required this.rating, required this.voteAmount});
  final String img;
  final String name;
  final int  rating;
  final int voteAmount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kMovieItemWidth,
      height: kMovieItemHeight,
      child: Stack(
        children: [
          CachedNetImageWGradient(imageUrl: img),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(kSmallPadding),
              child: SizedBox(
                height: 80,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: kMidFontSize,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "$rating",
                          style: TextStyle(color: kLightWhite, fontSize: kSmallFontSize),
                        ),
                        const SizedBox(
                          width: kVerticalSpacing,
                        ),
                        Text(
                          '$voteAmount votes',
                          style: TextStyle(color: kLightWhite, fontSize: kSmallFontSize),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
