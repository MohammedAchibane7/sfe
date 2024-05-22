class PopularProductModel{
  final String desc;
  bool isfav;
  final double price;
  final String imgpath;

  PopularProductModel({required this.desc, required this.isfav, required this.imgpath,required this.price});
}

List<PopularProductModel> popularproducts=[
  PopularProductModel(desc: "Wireless Controller for ps4", isfav: true,price:69.00, imgpath: "assests/images/Image Popular Product 1.png"),
  PopularProductModel(desc: "Nike Sport White-Man Pant", isfav: false,price:50.55 , imgpath: "assests/images/Image Popular Product 2.png"),
  PopularProductModel(desc: "Colorful Bike Helmet Hard", isfav: false,price:15.49 , imgpath: "assests/images/Image Popular Product 3.png"),
];