import 'package:flutter/material.dart';

import '../constants/dimens.dart';
import '../constants/item_lists.dart';
import 'actor_list_tile.dart';

class ActorListView extends StatelessWidget {
  const ActorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    height: kActorListTileHeight,
                    child: ListView.builder(
                        itemCount: actorList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return ActorListTile(
                              actorName: actorList[index].name,
                              image: actorList[index].image,
                              job: "Actor");
                        }),
                  );
  }
}