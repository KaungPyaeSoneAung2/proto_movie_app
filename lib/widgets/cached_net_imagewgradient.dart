import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/dimens.dart';

import '../constants/item_lists.dart';

class CachedNetImageWGradient extends StatelessWidget {
  const CachedNetImageWGradient({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
              imageUrl: imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      stops: [1.0, 0]),
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(kCurvyBorderRadius),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    stops: [0.0, 0.7]
                  )),
                ),
              ),
              placeholder: (context, url) => Image.asset(place_holder),
            );
  }
}