import 'package:flutter/material.dart';

import 'screens/auth/signinscreen.dart';
import 'screens/auth/signupscreen.dart';
import 'screens/auth/tokotoscreen.dart';
// import 'screens/auth/signupscreen.dart';

// import 'screens/auth/tokotoscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 247, 177, 121)),
         colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xfff77546), // Set primary color to orange
          // You can adjust other color properties as needed
        ),
        useMaterial3: true,
        fontFamily: "Ubuntu",
      ),
      home: SigninScreen(),
    );
  }
}



