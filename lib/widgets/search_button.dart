import 'package:flutter/material.dart';
import 'package:proto_movie_app/constants/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll<Color>(kBrightOrange),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      child: const Icon(Icons.search, color: Colors.white),
    );
  }
}
