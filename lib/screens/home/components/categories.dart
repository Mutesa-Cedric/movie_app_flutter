import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategoryIndex = 0;
  List<String> categories = [
    "In Theater",
    "Box Office",
    "Coming soon",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategoryIndex = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategoryIndex
                        ? kTextColor
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedCategoryIndex
                      ? kSecondaryColor
                      : Colors.transparent,
                ))
          ],
        ),
      ),
    );
  }
}
