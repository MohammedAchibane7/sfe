import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:get/get.dart';

class ProductCostumisation extends StatelessWidget {
  final ProductModel product;
  const ProductCostumisation({
    super.key,
    required this.product,
  });
  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.find<ProductController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Row(
            children: [
              ...List.generate(
                product.colors.length,
                (index) => GetBuilder<ProductController>(
                  id: "color",
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        controller.colorSelected=index;
                        controller.update(["color"]);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 2),
                        padding: const EdgeInsets.all(8),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                              color: productController.colorSelected == index
                                  ? Colors.orange
                                  : Colors.transparent),
                        ),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: product.colors[index],
                                shape: BoxShape.circle)),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              RoundedIconBtn(
                icon: Icons.remove,
                press: () {
                  productController.decrementQuantity();
                },
              ),
              const SizedBox(
                width: 10,
              ),
              GetBuilder<ProductController>(builder: (controller) {
                return Text(
                  controller.productQuantity.toString(),
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                );
              }),
              const SizedBox(
                width: 10,
              ),
              RoundedIconBtn(
                showShadow: true,
                icon: Icons.add,
                press: () {
                    productController.incrementQuantity();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final GestureCancelCallback press;
  final bool showShadow;
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
    this.showShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.orange, padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
