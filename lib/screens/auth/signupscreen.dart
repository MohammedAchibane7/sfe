import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //hna fin kan3mro
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                    color: const Color.fromARGB(160, 0, 0, 0),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Complete your details or continue \n with social media ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                  decoration: InputDecoration(
                  labelText: "Email", // Label text
                  hintText: "Enter your Email", // Hint text
                  suffixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ), // Suffix icon
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  labelText: "Password", // Label text
                  hintText: "Enter your Password", // Hint text
                  suffixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ), // Suffix icon
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  labelText: "Confirm Password", // Label text
                  hintText: "Confirm your Password", // Hint text
                  suffixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ), // Suffix icon
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: printSalam,
                child: Text('Continue',
                style: TextStyle(
                color: Colors.white,
                fontSize: 15.0, // Text color of the button
              ),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  padding: EdgeInsets.symmetric(
                    horizontal: 130,
                    vertical: 4,
                  ),
                ),
              ),
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
              Text('agree with our terms and conditions '),
            ],
          ),
        ),
      ),
    );
  }

  void printSalam() {
    print('Salam');
  }
}
