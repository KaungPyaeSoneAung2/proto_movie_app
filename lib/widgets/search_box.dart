import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Movies...",
          hintStyle: const TextStyle(color: kTextGrey),
          contentPadding: const EdgeInsets.only(top: kMidPadding, bottom: kMidPadding, left: kMidPadding),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          filled: true,
          fillColor:kDarkerGrey
        ),
      ));
  }
}
