import 'package:flutter/material.dart';

class CashBack extends StatelessWidget {
  const CashBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(left: 15),
      width: double.maxFinite,
      height: 85,
      decoration: BoxDecoration(color: const Color(0xff4A3298),borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("A Sumer surprise",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white.withOpacity(0.7),fontSize: 12 ),),
          const Text("CashBack 20%",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
          
        ],
      ),
    );
  }
}