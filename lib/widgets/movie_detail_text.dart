import 'package:flutter/material.dart';

import '../constants/dimens.dart';

class MovieDetailText extends StatelessWidget {
  const MovieDetailText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: kBigFontSize,
                        fontWeight: FontWeight.bold),
                  );
  }
}