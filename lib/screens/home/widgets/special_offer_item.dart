
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/special_offer_model.dart';

class SpecialOfferItem extends StatelessWidget {
  final SpecialOfferModel offer;
  const SpecialOfferItem({
    super.key, required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 100,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              SizedBox(
                width: 300,
                height: 110,
                child: Image.asset(
                  offer.imgpath,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.0)
                  ],
                )),
              ),
              // Column(children: [Text("Smartphones"),Text("data")],)
              Positioned(
                left: 20,
                top: 10,
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: "${offer.name}\n",
                        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
                    TextSpan(
                        text: "${offer.name} Brands",
                        style: const TextStyle(fontSize: 12)),
                  ],
                  style: const TextStyle(color: Colors.white, height: 1.5),
                )),
              )
            ],
          )),
    );
  }
}