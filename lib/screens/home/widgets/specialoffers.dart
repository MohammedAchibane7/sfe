import 'package:flutter/material.dart';
import '../../../models/special_offer_model.dart';
import 'section_title.dart';
import 'special_offer_item.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(text: "Special for you",),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: double.maxFinite,
          height: 110,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemExtent: 300, // Width of each item
              padding: const EdgeInsets.only(left: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: specialoffers.length, //correction
              itemBuilder: (context, index) {
                return SpecialOfferItem(offer: specialoffers[index],);
              }),
        )
      ],
    );
  }
}

