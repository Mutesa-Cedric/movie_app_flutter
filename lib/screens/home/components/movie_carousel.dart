import 'package:flutter/material.dart';
import 'package:movie_app_flutter/constants.dart';
import 'dart:math' as math;

import 'package:movie_app_flutter/models/movie.dart';
import 'package:movie_app_flutter/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  // 1.create a variable with type pageController
  // pageController allows you to manage which page is visible in pageView
  late PageController _pageController;
  int initialPage = 1;

// initialize state
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: AspectRatio(
          aspectRatio: 0.85,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                initialPage = value;
              });
            },
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: ((context, index) => buildMovieSlider(index)),
          ),
        ));
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page!;
            // we use 0.038 so that 180*0.038=7 deg. cause we need to rotate our poster 7deg
            // we use cramp so that our value vary from -1 to 1
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(microseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
                angle: math.pi * value, child: MovieCard(movie: movies[index])),
          );
        },
      );
}
