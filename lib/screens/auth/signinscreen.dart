import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [Icon(Icons.arrow_back_ios_new_rounded), Text('Sign in')],
          ),
          Text('Welcome Back'),
          Text(' Sign in with your email and password '),
          TextFormField(),
          TextFormField(),
          Row(
            children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: ChangeCheckboxState),
                  Text('remember me'),
                ],
              ),
              Text('forget password'),
            ],
          ),
          TextButton(onPressed: printSalam, child: Text('Continue')),
          Row(
            children: [
              Container(
                width: 14,
                height: 14,
                color: Colors.blue,
              ),
              Container(
                width: 14,
                height: 14,
                color: Colors.red,
              ),
              Container(
                width: 14,
                height: 14,
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              Text('dont have an account ? Sign up'),
              Text('dont have an account ? Sign up'),
            ],
          )
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
