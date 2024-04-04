import 'package:flutter/material.dart';

class TokotoScreen extends StatelessWidget {
  const TokotoScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('TOKOTO'),
          Text('welcome to tokoto . lets shop!'),
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
          Row(children: [Container(width: 30, height: 10,color: Colors.red),Container(width: 10,height: 10,
                color: Colors.red),Container(width: 10,height: 10,color: Colors.red)],),
          TextButton(onPressed: printSalam, child: Text('Continue')),
        ],
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
