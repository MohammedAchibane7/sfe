import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

var formKey = GlobalKey<FormState>();
String email="",pwd="",confirmationpwd="";

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
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
                color: Color.fromARGB(160, 0, 0, 0),
              ),
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                // fontFamily: "Poppins",
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: Colors.white,
            ),
          ],
        ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    
                    'Register Account',
                    style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Complete your details or continue \n with social media ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    onSaved: (String? newValue) {
                      email=newValue!;
                    },
                    validator: (String? value){
                      final bool emailValid = 
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if(!emailValid){
                        return "this email is not valid";
                      }
                      return null;
                      
                      
                    },
                    decoration: InputDecoration(

                      labelText: "Email", // Label text
                      hintText: "Enter your Email", // Hint text
                      suffixIcon: const Icon(Icons.mail_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (String? newValue) {
                      pwd=newValue!;
                    },
                    obscureText: true,
                    validator: (String? value){
                      if(value!.length<8){
                        return "the length is <8";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password", // Label text
                      hintText: "Enter your Password", // Hint text
                      suffixIcon: const Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (String? newValue) {
                      confirmationpwd=newValue!;
                    },
                    obscureText: true,
                    validator: (String? value){
                      if(pwd!=confirmationpwd){
                        return "the passwords does not match";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Confirm Password", // Label text
                      hintText: "Confirm your Password", // Hint text
                      suffixIcon: const Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextButton(
                    onPressed: () => signUp(context),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xfff77546),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 130,
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 209, 209),
                        ),
                        child: SvgPicture.asset("assests/images/google.svg",height:25 ,width: 25,),
            
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        // padding: EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 209, 209),
                        ),
                        child: Container(
                            margin: const EdgeInsets.all(5),
                            child: Image.asset(
                              "assests/images/facebook1.png",
                            )),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 209, 209),
                        ),
                        child: Image.asset(
                          "assests/images/twitter1.png",
                          cacheHeight: 22,
                          cacheWidth: 22,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
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
      ),
    );
  }


  void signUp( context ){
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print(email);
      print(pwd);
      print(confirmationpwd);

      //call sign in API --> if success --> go to home screen  
      Navigator.pushNamed(context, "/home");
    }
  }
  // void printSalam() {
  //   print('Salam');
  // }
}
