import 'package:flutter/material.dart';

var formKey = GlobalKey<FormState>();

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                        'Sign In',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          // fontFamily: "Muli",
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
                    'Welcome Back',
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
                    'Sign in with your email and password \n or continue with social media ',
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
                    validator: (String? value){
                      if(value!.isNotEmpty){
                        if(!value.contains("@") || !value.contains(".")){
                          return "the email is invalid";
                        }else {
                          return null;
                        }
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Email", // Label text
                      hintText: "Enter your Email", // Hint text
                      suffixIcon: Icon(Icons.mail_outline),
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
                    validator: (String? value){
                      if(value!.length <8){
                        return "the length is <8";
                      }else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Password", // Label text
                      hintText: "Enter your Password", // Hint text
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  Row(
                    children: [Container()],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: changeCheckboxState),
                          Text("Remember me"),
                        ],
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  TextButton(
                    onPressed: signIn,
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
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 209, 209, 209),
                        ),
                        child: Image.asset(
                          "assests/images/google.png",
                          cacheHeight: 25,
                          cacheWidth: 25,
                        ),
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Don't have an account ?"),
                      Text(
                        " Sign Up ",
                        style: TextStyle(
                          color: Color(0xfff77546),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn() {
    formKey.currentState!.validate();
  }
  void printSalam() {
    print('Salam');
  }

  void changeCheckboxState(bool? value) {
    print('changed');
  }
}
