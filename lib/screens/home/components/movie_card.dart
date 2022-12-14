import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_flutter/constants.dart';
import 'package:movie_app_flutter/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [kDefaultShadow],
              image: DecorationImage(
                image: AssetImage(movie.poster),
                fit: BoxFit.fill,
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 20,
              ),
              const SizedBox(width: kDefaultPadding / 2),
              Text(
                '${movie.rating}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
