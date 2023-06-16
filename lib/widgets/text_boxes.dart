import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';
import 'package:proto_movie_app/constants/dimens.dart';

class TextBoxes extends StatelessWidget {
  const TextBoxes({super.key, required this.inputText, this.isSelected});
  final String inputText;
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kSmallPadding),
      decoration: BoxDecoration(
          color: (isSelected ?? false)
              ? kBrightOrange
              : Colors.transparent,
              borderRadius: BorderRadius.circular(6)
              ),
      child: Text(
        inputText,
        style: const TextStyle(color: Colors.white, fontSize: kSmallFontSize),
      ),
    );
  }
}
