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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'TOKOTO',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Color(0xfffFF7F50)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome to '),
                      Text(
                        'Tokoto.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(" L'ets shop!"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Image.asset(
                  "assests/images/splash_1.png",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 30, height: 10, color: Colors.red),
                  SizedBox(width: 13,),
                  Container(width: 10, height: 10, color: Colors.red),
                  SizedBox(width: 13,),
                  Container(width: 10, height: 10, color: Colors.red),
                ],
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: printSalam,
                child: Text('Continue', style: TextStyle(fontSize: 18),),
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xfff77546),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 16,
                    ),
                ),
                    
              ),
            ],
          ),
        ),
      ),
    );
  }

  void printSalam() {
    print('Salam');
  }

  void ChangeCheckboxState(bool? value) {
    print('Salam');
  }
}
