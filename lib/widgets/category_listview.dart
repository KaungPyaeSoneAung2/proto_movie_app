import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/dimens.dart';
import 'package:proto_movie_app/constants/item_lists.dart';
import 'package:proto_movie_app/widgets/text_boxes.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kMovieListViewWidth,
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: kTinyPadding, right: kTinyPadding),
              child: TextBoxes(
                  inputText: categoryList[index],
                  isSelected: (index == 0) ? true : false),
            );
          }),
    );
  }
}
