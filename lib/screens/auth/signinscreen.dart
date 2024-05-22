import 'package:flutter/material.dart';

import 'widgets/stateful_Checkbox.dart';

var formKey = GlobalKey<FormState>();
String email = "", password = "";
bool isChecked = false;
bool isVisible = false;

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18,
                        color: Color.fromARGB(160, 0, 0, 0),
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
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Sign in with your email and password \n or continue with social media ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  TextFormField(
                    onSaved: (String? newValue) {
                      email = newValue!;
                    },
                    validator: (String? value) {
                      // if(value!.isNotEmpty){
                      //   if(!value.contains("@") || !value.contains(".")){
                      //     return "the email is invalid";
                      //   }else {
                      //     return null;
                      //   }
                      // }
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (!emailValid) {
                        return "the email is not valid";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                      labelText: "Email", // Label text
                      hintText: "Enter your Email", // Hint text
                      suffixIcon: const Icon(Icons.mail_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  TextFormField(
                    obscureText: !isVisible,
                    onSaved: (String? newValue) {
                      password = newValue!;
                    },
                    validator: (String? value) {
                      if (value!.length < 8) {
                        return "the length is <8";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                      labelText: "Password", // Label text
                      hintText: "Enter your Password", // Hint text
                      suffixIcon: IconButton(
                        onPressed: () {
                          isVisible = !isVisible;
                          setState(() {});
                        },
                        icon: Icon(isVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ), // Suffix icon
                    ),
                  ),
                  Row(
                    children: [Container()],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Checkbox(value: isChecked, onChanged: changeCheckboxState),
                          statefulCheckbox(),
                          Text("Remember me"),
                        ],
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(44, 36, 36, 0.74),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  TextButton(
                    onPressed: () => signIn(context),
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
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 209, 209),
                        ),
                        child: Image.asset(
                          "assests/images/google.png",
                          cacheHeight: 25,
                          cacheWidth: 25,
                        ),
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(" Don't have an account ?",style: TextStyle(fontSize: 16.0,),),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xfff77546),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print(email);
      print(password);
      print(isChecked);

      //call sign in API --> if success --> go to home screen
      Navigator.pushNamed(context, "/home");

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
    }
  }

  void printSalam() {
    print('Salam');
  }

  void changeCheckboxState(bool? value) {
    print('value $value');
    isChecked = value!;
    // setState(() {});
  }
}
