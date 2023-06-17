import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/constants/item_lists.dart';

class ActorListTile extends StatelessWidget {
  const ActorListTile({super.key, required this.actorName, required this.image, required this.job});
  final String actorName;
  final String image;
  final String job;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kActorListTileWidth,
      height: kActorListTileHeight,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(job, style: const TextStyle(color: Colors.white,fontSize: kMidFontSize, fontWeight: FontWeight.bold),),
              Text(actorName, style: const TextStyle(color: kTextGrey,fontSize: kSmallFontSize, fontWeight: FontWeight.bold),),
            ],
          )
          
        ],
      ),
    );
  }
}