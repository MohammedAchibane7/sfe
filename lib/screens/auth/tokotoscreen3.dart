import 'package:flutter/material.dart';

class TokotoScreen3 extends StatelessWidget {
  const TokotoScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              const SizedBox(
                    height: 30,
              ),
              const Text("TOKOTO",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xfff77546),),),
              const SizedBox(
                height: 20,
              ),
              const Text("We show the easy way to shop. \nJust stay at home with us",textAlign: TextAlign.center,style :TextStyle(fontSize: 18)),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "assests/images/splash_3.png",
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 30,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60,),
              TextButton(
                onPressed: printS,
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xfff77546),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 16,
                    ),
                ),
                child: const Text('Continue', style: TextStyle(fontSize: 18),),  
              ),
            ],
          ),
        ),
      ),
    );
    
  }
  void printS() {
    print('Salam');
  
  }
}