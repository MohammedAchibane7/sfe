import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/product_controller.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:get/get.dart';

import 'screens/auth/signinscreen.dart';
import 'screens/auth/signupscreen.dart';
import 'screens/product_details/prod_details_screen.dart';
// import 'screens/auth/signupscreen.dart';

// import 'screens/auth/tokotoscreen.dart';


void main() {
  Get.lazyPut(() => ProductController() );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 247, 177, 121)),
         colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xfff77546), // 0xfff#ec895b 0xfff77546 Set primary color to orange
          
          // You can adjust other color properties as needed
        ),
        useMaterial3: true,
        fontFamily: "Ubuntu",
        textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18.0), // Default font size
      // Add more text styles here as needed
    ),
      ),
       home: const HomeScreen(),
       
      initialRoute: "/home",
      //routing
      routes: {
        "/home": (context) => const HomeScreen(),
        "/signin": (context) => const SigninScreen(),
        "/signup": (context) => const SignupScreen(),
        "/product_details": (context) => const ProductDetailsScreen(),
        // "/slide1": (context) => TokotoScreen(),
        // "/slide2": (context) => TokotoScreen2(),
        // "/slide3": (context) => TokotoScreen3(),
      }
    );
  }
}



