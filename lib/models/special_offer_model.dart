class SpecialOfferModel{
  final String name;
  final int num;
  final String imgpath;

  SpecialOfferModel({required this.name, required this.num, required this.imgpath});
}

List<SpecialOfferModel> specialoffers=[
  SpecialOfferModel(name: "Smartphone", num: 18, imgpath: "assests/images/Image Banner 2.png"),
  SpecialOfferModel(name: "Fashion", num: 24, imgpath: "assests/images/Image Banner 3.png"),
];