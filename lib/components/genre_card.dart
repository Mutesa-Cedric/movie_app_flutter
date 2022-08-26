import 'package:flutter/material.dart';
import 'package:movie_app_flutter/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black26),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
