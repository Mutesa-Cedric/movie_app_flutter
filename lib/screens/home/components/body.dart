import 'package:flutter/material.dart';
import 'package:movie_app_flutter/constants.dart';
import 'package:movie_app_flutter/screens/home/components/categories.dart';
import 'package:movie_app_flutter/screens/home/components/genres.dart';
import 'package:movie_app_flutter/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
