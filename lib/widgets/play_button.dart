import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: kCircleAvatarRadius,
      backgroundColor: kBrightOrange,
      child: Icon(Icons.play_arrow, size: kIconSizeBig, color: Colors.white,),
    );
  }
}