import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/constants/item_lists.dart';

class ProductionListView extends StatelessWidget {
  const ProductionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    height: 140,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(place_holder, height: 100, width: 150, fit: BoxFit.cover,),
                                Text("Universal Pictures", style: TextStyle(color: kTextGrey, fontSize: kSmallFontSize),)
                              ],
                            ),
                          );
                        }),
                  );
  }
}