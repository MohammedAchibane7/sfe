import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/screens/product_details/prod_details_screen.dart';
import 'package:get/get.dart';

import '../heart_icon_button.dart';

class ProductItem extends StatelessWidget {
  final ProductModel pproduct;
  const ProductItem({super.key, required this.pproduct});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/product_details",
            arguments: ProductDetailsScreenArguments(pproduct));
      },
      child: Container(
        width: 150,
        height: 400,
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffe9ecef),
                  ),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(pproduct.imgpath[0]),
                  ),
                ),
              ]),
            ),
            Text(
              pproduct.title,
              style: const TextStyle(
                color: Color.fromARGB(255, 148, 148, 148),
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${pproduct.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      color: Color(0xffec7d10),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                GetBuilder<ProductController>(
                  builder: (controller) {
                    return HeartIconButton(
                      isfav: pproduct.isfav,
                      
                    );
                  }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
