import 'package:flutter/material.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {
        "title": "Flash Deal",
        "pathsvg": "assests/icon/Flash Icon.svg",
      },
      {
        "title": "Games",
        "pathsvg": "assests/icon/Game Icon.svg",
      },
      {
        "title": "Bills",
        "pathsvg": "assests/icon/Bill Icon.svg",
      },
      {
        "title": "Daily Gifts",
        "pathsvg": "assests/icon/Gift Icon.svg",
      },
      {
        "title": "More",
        "pathsvg": "assests/icon/Discover.svg",
      },
    ];
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.maxFinite,
      // height: 100,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            categories.length , (index) => CategoryItem(text: categories[index]["title"]!, pathsvg: categories[index]["pathsvg"]!)),
      ),
    );
  }
}
