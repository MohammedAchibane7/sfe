import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                        // fontFamily: "Poppins",
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
                    fontFamily: "Ubuntu",
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
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
                    suffixIcon: Icon(Icons.mail_outlined),
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
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xfff77546),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 209, 209, 209),
                      ),
                      child: SvgPicture.asset("assests/images/google.svg",height:25 ,width: 25,),

                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      // padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 209, 209, 209),
                      ),
                      child: Container(
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            "assests/images/facebook1.png",
                          )),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 209, 209, 209),
                      ),
                      child: Image.asset(
                        "assests/images/twitter1.png",
                        cacheHeight: 22,
                        cacheWidth: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Agree with our terms and conditions lorem aha fsjks mosqqke anawsadez',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void printSalam() {
    print('Salam');
  }
}
