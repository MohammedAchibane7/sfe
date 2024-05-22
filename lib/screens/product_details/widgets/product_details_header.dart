import 'package:flutter/material.dart';

class ProductDetailsHeader extends StatelessWidget {
  final double rating;
  const ProductDetailsHeader({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        right: 26,
        left: 26,
        bottom: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 38,
              width: 38,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.grey.withOpacity(0.7),
                size: 22,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Text(rating.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                const SizedBox(width: 6,),
                const Icon(
                  Icons.star_rate_rounded,
                  size: 22,
                  color: Color.fromARGB(255, 226, 208, 39),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
