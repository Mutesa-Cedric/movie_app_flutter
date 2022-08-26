import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app_flutter/constants.dart';
import 'package:movie_app_flutter/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      actions: [
        IconButton(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"))
      ],
    );
  }
}
