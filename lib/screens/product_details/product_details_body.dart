import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:get/get.dart';

import 'widgets/product_costumisation.dart';
import 'widgets/top_rounded_corners.dart';

class ProductDetailsBody extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsBody({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    ProductController productcontroller= Get.find<ProductController>();
    return TopRoundedCorners(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    product.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    productcontroller.toggleFavorite(product);
                  },
                  child: GetBuilder<ProductController>(
                    builder: (controller) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 18),
                        decoration: BoxDecoration(
                          color: product.isfav
                              ? const Color.fromARGB(255, 252, 204, 220)
                              : Colors.grey.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: product.isfav
                              ? Colors.red
                              : Colors.grey.withOpacity(0.7),
                        ),
                      );
                    }
                  ),
                ),
                Text(
                  product.desc,
                  style: const TextStyle(color: Colors.grey, height: 1.8),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Row(
                    children: [
                      Text(
                        "See more details ",
                        style:
                            TextStyle(color: Color(0xffff77547), height: 1.8),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.orange,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          TopRoundedCorners(
            color: const Color(0xFFF6F7F9),
            child: Column(
              children: [
                ProductCostumisation(product: product),
                TopRoundedCorners(
                    color: Colors.white,
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: TextButton(
                      style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor: const Color(0xfff77546) ),
                      onPressed: () {},
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
