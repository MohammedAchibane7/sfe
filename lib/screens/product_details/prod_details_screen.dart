import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import 'product_details_body.dart';
import 'widgets/product_details_header.dart';
import 'widgets/product_images.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as ProductDetailsScreenArguments;
    ProductModel product = args.product;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: ListView(
        children: [
          ProductDetailsHeader(rating: product.rating ),
          ProductImages(images: product.imgpath ,),
          ProductDetailsBody(product: product,),
          // ProductCostumisation(colors: product.colors,),
          // AddtoCartButton(),
        ],
      ),
    );
  }
}

class ProductDetailsScreenArguments {
  final ProductModel product;

  ProductDetailsScreenArguments(this.product);
}
