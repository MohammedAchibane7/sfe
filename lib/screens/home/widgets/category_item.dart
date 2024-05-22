import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  final String pathsvg;
  final String text;
  const CategoryItem({
    super.key,
    required this.pathsvg,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFFECDF),
            ),
            child: SvgPicture.asset(pathsvg),
            
          ),
          const SizedBox(height: 4,),
          SizedBox( child: Text(text,textAlign: TextAlign.center,style: const TextStyle(color: Colors.grey),)),
        ],
      ),
    );
  }
}