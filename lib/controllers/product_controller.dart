import 'package:flutter_application_1/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  int imageSelected=0;
  bool isfav=false;
  int colorSelected=0;
  int productQuantity=0;

  void incrementQuantity(){
    productQuantity++;
    update();
  }
  void decrementQuantity(){
    if(productQuantity>0){
      productQuantity--;
    update();
    }
  }
  void toggleFavorite(ProductModel product){
    product.isfav = !product.isfav;
    update();
  }
}