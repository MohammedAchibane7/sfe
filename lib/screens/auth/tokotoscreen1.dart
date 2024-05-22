import 'package:flutter/material.dart';

class TokotoScreen extends StatelessWidget {
  const TokotoScreen({super.key});

  // This widget is the root of your application.
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
              const Text("Welcome to Tokoto, Let’s shop!",textAlign: TextAlign.center,style :TextStyle(fontSize: 18)),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "assests/images/splash_1.png",
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
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
                    width: 10,
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
                onPressed: () => nextslide(context),
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
  void nextslide(context) {
    Navigator.pushNamed(context, "/slide2");
  
  }
}
