import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/widgets/section_title.dart';
import '../../../../models/product_model.dart';
import 'popular_product_item.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(text: "Popular products"),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: double.maxFinite,
          height: 235,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemExtent: 150, // Width of each item
              padding: const EdgeInsets.only(left: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: productsList.length, //correction
              itemBuilder: (context, index) {
                return ProductItem(pproduct: productsList[index],);
              }),
        )
      ],
    );
  }
}